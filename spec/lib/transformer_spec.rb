# frozen_string_literal: true

require_relative "../spec_helper"

RSpec.describe Transformer do
  subject { described_class }

  let(:input) { JSON.parse({ username: "xyz", upload: "xyz" }.to_json) }
  let(:invalid_input) { JSON.parse({ username: "xyz", upload: "xyz", echoed: true }.to_json) }
  let(:output) { { username: "xyz", upload: "xyz", echoed: true } }

  context "# Transformer" do
    it "transofrm json and adds echoed field" do
      transformed = subject.new(input).transform
      expect(transformed.to_json).to eq output.to_json
    end
  end

  context "# Transformer Error" do
    it "raise an error if echoed field exists" do
      expect { subject.new(invalid_input).transform }.to raise_error
    end
  end
end
