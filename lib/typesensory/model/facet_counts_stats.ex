# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.FacetCountsStats do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :max,
    :min,
    :sum,
    :total_values,
    :avg
  ]

  @type t :: %__MODULE__{
          :max => float() | nil,
          :min => float() | nil,
          :sum => float() | nil,
          :total_values => integer() | nil,
          :avg => float() | nil
        }
end

defimpl Poison.Decoder, for: Typesensory.Model.FacetCountsStats do
  def decode(value, _options) do
    value
  end
end
