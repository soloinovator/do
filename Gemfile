# frozen_string_literal: true

source "https://rubygems.org"

gem "prometheus-client"
gem "puma", ">= 5.6.7"
gem "puma-metrics", ">= 1.2.4"
gem "rack"
gem "syro"

group :development do
  gem "pry"
  gem "rt_rubocop_defaults", require: false
  gem "rubocop_runner", "~> 2.1", require: false
  gem "shotgun"
end

group :test do
  gem "factory_bot"
  gem "faker"
  gem "rack-test"
  gem "rspec"
  gem "rubocop-rspec", require: false
end
