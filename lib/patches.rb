module Rack
  class Jekyll
    def call(env)
      request = Rack::Request.new(env)

      return serve_wait_page(request) unless complete?

      filename = @files.get_filename(request.path_info)

      if filename
        media_type = Utils.media_type(filename)

        file = Utils.file_info(filename)
        body = file[:body]
        time = file[:time]
        hdrs = { 'last-modified' => time }

        if time == request.env['HTTP_IF_MODIFIED_SINCE']
          response = [304, hdrs, []]
        else
          hdrs.update({ 'content-length' => body.bytesize.to_s,
                        'content-type' => media_type })
          response = [200, hdrs, [body]]
        end

      else
        body = not_found_message
        hdrs = { 'content-length' => body.bytesize.to_s,
                 'content-type' => 'text/html' }
        response = [404, hdrs, [body]]
      end

      request.head? ? remove_body(response) : response
    end

    def serve_wait_page(req)
      headers ||= {}
      headers['content-length'] = @wait_page.bytesize.to_s
      headers['content-type'] = 'text/html'
      headers['Connection'] = 'keep-alive'
      [200, headers, [@wait_page]]
    end
  end
end
