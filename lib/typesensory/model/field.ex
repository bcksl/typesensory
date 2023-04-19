# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.Field do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :type,
    :optional,
    :facet,
    :index,
    :locale,
    :sort,
    :infix,
    :num_dim,
    :drop
  ]

  @type t :: %__MODULE__{
    :name => String.t,
    :type => String.t,
    :optional => boolean() | nil,
    :facet => boolean() | nil,
    :index => boolean() | nil,
    :locale => String.t | nil,
    :sort => boolean() | nil,
    :infix => boolean() | nil,
    :num_dim => integer() | nil,
    :drop => boolean() | nil
  }
end

defimpl Poison.Decoder, for: Typesensory.Model.Field do
  def decode(value, _options) do
    value
  end
end

