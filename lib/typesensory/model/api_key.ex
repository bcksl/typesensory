# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.ApiKey do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :value,
    :description,
    :actions,
    :collections,
    :expires_at,
    :id,
    :value_prefix
  ]

  @type t :: %__MODULE__{
    :value => String.t | nil,
    :description => String.t,
    :actions => [String.t],
    :collections => [String.t],
    :expires_at => integer() | nil,
    :id => integer() | nil,
    :value_prefix => String.t | nil
  }
end

defimpl Poison.Decoder, for: Typesensory.Model.ApiKey do
  def decode(value, _options) do
    value
  end
end

