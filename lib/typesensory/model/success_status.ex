# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.SuccessStatus do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :success
  ]

  @type t :: %__MODULE__{
    :success => boolean()
  }
end

defimpl Poison.Decoder, for: Typesensory.Model.SuccessStatus do
  def decode(value, _options) do
    value
  end
end
