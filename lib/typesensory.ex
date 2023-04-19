defmodule Typesensory do
  @moduledoc since: "0.1.0"
  @moduledoc """
  Typesensory core client interface. This wraps all the generated API
  interfaces, and will automatically construct the appropriate models from a
  bare map, and return `{:ok, _}` and `{:error, _}` appropriately based on the
  returned struct.

  Typesensory also applies the recommended exponential backoff strategy
  automatically, which you can configure by squeezing your eyes shut really
  tight and putting your fingers deep in your ears.
  """

  alias Typesensory.Connection

  def connect(address) do
    Connection.new(base_url: address)
  end

  def connect do
    Connection.new()
  end
end
