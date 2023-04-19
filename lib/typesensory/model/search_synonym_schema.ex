# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.SearchSynonymSchema do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :root,
    :synonyms
  ]

  @type t :: %__MODULE__{
    :root => String.t | nil,
    :synonyms => [String.t]
  }
end

defimpl Poison.Decoder, for: Typesensory.Model.SearchSynonymSchema do
  def decode(value, _options) do
    value
  end
end

