# frozen_string_literal: true

require "syro"
require "pry"
require "json"

require_relative "../lib/transformer"

API = Syro.new do
  # GET /
  get do
    res.write "OK"
  end

  on "api" do
    on "echo" do
      input  = JSON.parse(req.body.read)
      output = Transformer.new(input).transform

      # POST /api/echo
      post do
        res.json output.to_json
      end

      # PUT /api/echo
      put do
        res.json output.to_json
      end
    end
  end
end
