defmodule Typesensory.Promote do
  import Typesensory.Proxy
  alias Typesensory.Api.Promote

  proxy Promote, :delete_search_override, [collection_name, override_id]
  proxy Promote, :get_search_overrides, [collection_name]
  proxy Promote, :upsert_search_override, [collection_name, override_id, search_override_schema]
end
