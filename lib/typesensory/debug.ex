defmodule Typesensory.Debug do
  import Typesensory.Proxy
  alias Typesensory.Api.Debug

  proxy Debug, :debug, []
end
