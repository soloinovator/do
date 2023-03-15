# frozen_string_literal: true

source "https://rubygems.org"

gem "prometheus-client"
gem "puma"
gem "puma-metrics"
gem "rack", ">= 2.2.6.4"
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
