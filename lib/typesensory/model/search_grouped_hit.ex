# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.SearchGroupedHit do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :group_key,
    :hits
  ]

  @type t :: %__MODULE__{
          :group_key => [map()],
          :hits => [Typesensory.Model.SearchResultHit.t()]
        }
end

defimpl Poison.Decoder, for: Typesensory.Model.SearchGroupedHit do
  import Typesensory.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:hits, :list, Typesensory.Model.SearchResultHit, options)
  end
end
