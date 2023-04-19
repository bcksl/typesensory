# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.CollectionUpdateSchema do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :fields
  ]

  @type t :: %__MODULE__{
          :fields => [Typesensory.Model.Field.t()]
        }
end

defimpl Poison.Decoder, for: Typesensory.Model.CollectionUpdateSchema do
  import Typesensory.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:fields, :list, Typesensory.Model.Field, options)
  end
end
