# frozen_string_literal: true

require_relative "../spec_helper"

RSpec.describe API do
  include Rack::Test::Methods

  let(:app) { described_class }

  let(:content) { { "CONTENT_TYPE" => "application/json" } }
  let(:request) { { "username":"xyz","upload":"xyz" }.to_json }
  let(:response) { { "username":"xyz","upload":"xyz","echoed": true }.to_json }

  context "#post /api/echo" do
    before do
      post("/api/echo", request, content)
    end

    it "posts request and gets echoed field as response" do
      expect(last_response).to be_ok
      expect(last_response.body).to eq response
    end
  end

  context "#put /api/echo" do
    before do
      put("/api/echo", request, content)
    end

    it "posts request and gets echoed field as response" do
      expect(last_response).to be_ok
      expect(last_response.body).to eq response
    end
  end
end
