# frozen_string_literal: true

require 'rack/jekyll'
require_relative 'lib/patches'

run Rack::Jekyll.new
