# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Model.MultiSearchCollectionParameters do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :q,
    :query_by,
    :query_by_weights,
    :prefix,
    :infix,
    :max_extra_prefix,
    :max_extra_suffix,
    :filter_by,
    :sort_by,
    :facet_by,
    :max_facet_values,
    :facet_query,
    :num_typos,
    :page,
    :per_page,
    :group_by,
    :group_limit,
    :include_fields,
    :exclude_fields,
    :highlight_full_fields,
    :highlight_affix_num_tokens,
    :highlight_start_tag,
    :highlight_end_tag,
    :snippet_threshold,
    :drop_tokens_threshold,
    :typo_tokens_threshold,
    :pinned_hits,
    :hidden_hits,
    :highlight_fields,
    :pre_segmented_query,
    :enable_overrides,
    :prioritize_exact_match,
    :exhaustive_search,
    :search_cutoff_ms,
    :use_cache,
    :cache_ttl,
    :min_len_1typo,
    :min_len_2typo,
    :vector_query,
    :collection
  ]

  @type t :: %__MODULE__{
          :q => String.t() | nil,
          :query_by => String.t() | nil,
          :query_by_weights => String.t() | nil,
          :prefix => String.t() | nil,
          :infix => String.t() | nil,
          :max_extra_prefix => integer() | nil,
          :max_extra_suffix => integer() | nil,
          :filter_by => String.t() | nil,
          :sort_by => String.t() | nil,
          :facet_by => String.t() | nil,
          :max_facet_values => integer() | nil,
          :facet_query => String.t() | nil,
          :num_typos => String.t() | nil,
          :page => integer() | nil,
          :per_page => integer() | nil,
          :group_by => String.t() | nil,
          :group_limit => integer() | nil,
          :include_fields => String.t() | nil,
          :exclude_fields => String.t() | nil,
          :highlight_full_fields => String.t() | nil,
          :highlight_affix_num_tokens => integer() | nil,
          :highlight_start_tag => String.t() | nil,
          :highlight_end_tag => String.t() | nil,
          :snippet_threshold => integer() | nil,
          :drop_tokens_threshold => integer() | nil,
          :typo_tokens_threshold => integer() | nil,
          :pinned_hits => String.t() | nil,
          :hidden_hits => String.t() | nil,
          :highlight_fields => String.t() | nil,
          :pre_segmented_query => boolean() | nil,
          :enable_overrides => boolean() | nil,
          :prioritize_exact_match => boolean() | nil,
          :exhaustive_search => boolean() | nil,
          :search_cutoff_ms => integer() | nil,
          :use_cache => boolean() | nil,
          :cache_ttl => integer() | nil,
          :min_len_1typo => integer() | nil,
          :min_len_2typo => integer() | nil,
          :vector_query => String.t() | nil,
          :collection => String.t()
        }
end

defimpl Poison.Decoder, for: Typesensory.Model.MultiSearchCollectionParameters do
  def decode(value, _options) do
    value
  end
end
