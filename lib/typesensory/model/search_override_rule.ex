# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.SearchOverrideRule do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :query,
    :match
  ]

  @type t :: %__MODULE__{
          :query => String.t(),
          :match => String.t()
        }
end

defimpl Poison.Decoder, for: Typesensory.Model.SearchOverrideRule do
  def decode(value, _options) do
    value
  end
end
