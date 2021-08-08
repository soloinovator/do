# frozen_string_literal: true

require "syro"
require "json"

API = Syro.new do
  # GET /
  get do
    res.write "OK"
  end
end
