source 'https://rubygems.org'

gem 'rails', '4.1.0'

gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'eco'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'mysql2'
gem 'sass-rails'
gem 'therubyracer',  platforms: :ruby
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'rails_backbone_generators'
  gem 'rest_controller_generators'
  gem 'spring'
end

group :guard do
  gem 'blinky-cloud', :require => false
  gem 'blinky-tape-test-status-guard', :require => false
  gem 'guard', :require => false
  gem 'guard-bundler', :require => false
  gem 'guard-delayed', :require => false
  gem 'guard-jasmine', :require => false
  gem 'guard-passenger', :require => false
  gem 'guard-rspec', :require => false
  gem 'guard-shell', :require => false
  gem 'listen', :require => false
  gem 'rb-inotify', :require => false
  gem 'serialport'
  gem 'unicorn'
end

group :development, :guard do
  gem 'passenger'
end

group :test, :guard, :development do
  gem 'jasmine'
  gem 'jasminerice', :git => 'https://github.com/bradphelan/jasminerice.git'
  gem 'jasminerice-runner'
  gem 'poltergeist'
  gem 'rspec'
end
