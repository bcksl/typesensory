# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.ApiKeysResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :keys
  ]

  @type t :: %__MODULE__{
          :keys => [Typesensory.Model.ApiKey.t()]
        }
end

defimpl Poison.Decoder, for: Typesensory.Model.ApiKeysResponse do
  import Typesensory.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:keys, :list, Typesensory.Model.ApiKey, options)
  end
end
