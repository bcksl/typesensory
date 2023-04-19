defmodule Typesensory.Collections do
  import Typesensory.Proxy
  alias Typesensory.Api.Collections

  proxy Collections, :create_collection, [collection_schema]
  proxy Collections, :delete_alias, [alias_name]
  proxy Collections, :delete_collection, [collection_name]
  proxy Collections, :get_alias, [alias_name]
  proxy Collections, :get_aliases, []
  proxy Collections, :get_collection, [collection_name]
  proxy Collections, :get_collections, []
  proxy Collections, :update_collection, [collection_name, collection_update_schema]
  proxy Collections, :upsert_alias, [alias_name]
end
