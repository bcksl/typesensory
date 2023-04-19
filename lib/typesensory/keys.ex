defmodule Typesensory.Keys do
  import Typesensory.Proxy
  alias Typesensory.Api.Keys

  proxy Keys, :create_key, []
  proxy Keys, :delete_key, [key_id]
  proxy Keys, :get_key, [key_id]
  proxy Keys, :get_keys, []
end
