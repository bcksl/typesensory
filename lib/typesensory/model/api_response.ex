# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.ApiResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :message
  ]

  @type t :: %__MODULE__{
          :message => String.t()
        }
end

defimpl Poison.Decoder, for: Typesensory.Model.ApiResponse do
  def decode(value, _options) do
    value
  end
end
