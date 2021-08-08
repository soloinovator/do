# frozen_string_literal: true

# Takes json as input and returns json with echoed field.
class Transformer
  def initialize(json)
    @json = json
  end

  def transform
    @json["echoed"] = true
    @json
  end
end
