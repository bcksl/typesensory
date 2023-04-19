# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.FacetCounts do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :counts,
    :field_name,
    :stats
  ]

  @type t :: %__MODULE__{
    :counts => [Typesensory.Model.FacetCountsCountsInner.t] | nil,
    :field_name => String.t | nil,
    :stats => Typesensory.Model.FacetCountsStats.t | nil
  }
end

defimpl Poison.Decoder, for: Typesensory.Model.FacetCounts do
  import Typesensory.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:counts, :list, Typesensory.Model.FacetCountsCountsInner, options)
    |> deserialize(:stats, :struct, Typesensory.Model.FacetCountsStats, options)
  end
end
