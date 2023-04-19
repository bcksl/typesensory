defmodule Typesensory.Operations do
  import Typesensory.Proxy
  alias Typesensory.Api.Operations

  proxy Operations, :take_snapshot, [snapshot_path]
  proxy Operations, :vote, []
end
