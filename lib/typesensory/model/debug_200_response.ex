# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.Debug200Response do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :version
  ]

  @type t :: %__MODULE__{
    :version => String.t | nil
  }
end

defimpl Poison.Decoder, for: Typesensory.Model.Debug200Response do
  def decode(value, _options) do
    value
  end
end
