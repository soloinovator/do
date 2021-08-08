# frozen_string_literal: true

workers 2
threads_count =  5
threads threads_count, threads_count

plugin "metrics"

preload_app!

port 3000
environment ENV["RACK_ENV"] || "development"
