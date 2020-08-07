# frozen_string_literal: true

source 'https://rubygems.org'

ruby File.open('.ruby-version', 'rb') { |f| f.read.chomp }

gem 'jekyll', '~> 3.9'
gem 'rack-jekyll', '0.5'

gem 'kramdown-parser-gfm'
gem 'minima', '~> 2.0'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'jekyll-feed', '~> 0.6'
end

group :development, :test do
  gem 'rubocop'
  gem 'rubocop-md'
end
