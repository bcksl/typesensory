defmodule Typesensory.Health do
  import Typesensory.Proxy
  alias Typesensory.Api.Health

  proxy Health, :health, []
end
