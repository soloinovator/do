# frozen_string_literal: true

require_relative "./errors/error"

# Takes json as input and returns json with echoed field.
class Transformer
  def initialize(json)
    @json = json
  end

  def transform
    raise FieldExistsError.new("Echoed field exists") if echoed?

    @json["echoed"] = true
    @json
  end

  def echoed?
    @json.keys.include?("echoed")
  end
end
