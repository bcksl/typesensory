defmodule Typesensory.Override do
  import Typesensory.Proxy
  alias Typesensory.Api.Override

  proxy Override, :get_search_override, [collection_name, override_id]
end
