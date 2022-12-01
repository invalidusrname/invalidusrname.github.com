# frozen_string_literal: true

source 'https://rubygems.org'

ruby File.open('.ruby-version', 'rb') { |f| f.read.chomp }

gem 'jekyll', '~> 3.9'
gem 'rack-jekyll', git: 'https://github.com/adaoraul/rack-jekyll.git',
                   ref: 'a997bd0'

gem 'kramdown-parser-gfm'
gem 'minima', '~> 2.0'
gem 'rackup'
gem 'rake', '~> 13.0'
gem 'sassc', '~> 2.4'
gem 'webrick', '~> 1.7'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'jekyll-feed', '~> 0.6'
end

group :development, :test do
  gem 'rubocop'
  gem 'rubocop-md'
end
