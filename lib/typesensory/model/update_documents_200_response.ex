# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.UpdateDocuments200Response do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :num_updated
  ]

  @type t :: %__MODULE__{
    :num_updated => integer()
  }
end

defimpl Poison.Decoder, for: Typesensory.Model.UpdateDocuments200Response do
  def decode(value, _options) do
    value
  end
end
