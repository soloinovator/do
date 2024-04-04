# frozen_string_literal: true

source "https://rubygems.org"

gem "prometheus-client"
gem "puma"
gem "puma-metrics"
gem "rack", ">= 2.2.8.1"
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
  gem "rack-test", ">= 2.0.0"
  gem "rspec"
  gem "rubocop-rspec", require: false
end
