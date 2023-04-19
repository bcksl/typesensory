# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.ExportDocumentsExportDocumentsParametersParameter do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :filter_by,
    :include_fields,
    :exclude_fields
  ]

  @type t :: %__MODULE__{
          :filter_by => String.t() | nil,
          :include_fields => String.t(),
          :exclude_fields => String.t()
        }
end

defimpl Poison.Decoder, for: Typesensory.Model.ExportDocumentsExportDocumentsParametersParameter do
  def decode(value, _options) do
    value
  end
end
