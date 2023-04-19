# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.MultiSearchSearchesParameter do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :searches
  ]

  @type t :: %__MODULE__{
    :searches => [Typesensory.Model.MultiSearchCollectionParameters.t]
  }
end

defimpl Poison.Decoder, for: Typesensory.Model.MultiSearchSearchesParameter do
  import Typesensory.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:searches, :list, Typesensory.Model.MultiSearchCollectionParameters, options)
  end
end

