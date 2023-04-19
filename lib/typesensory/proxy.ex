defmodule Typesensory.Proxy do
  @moduledoc since: "0.1.0"
  @moduledoc """
  Helper for wrapping API calls to Typesense with retries, node rotation, etc.
  """

  @doc since: "0.1.0"
  @doc """
  `proxy/1` wraps an API call in the retry, node-switching mechanism.

  `args` specifies the argument names for the function without the mandatory
  `connection` and `opts` parameters.
  """
  defmacro proxy(module, method, args) do
    quote do
      def unquote(method)(connection, unquote_splicing(args), opts \\ []) do
        # TODO add retries etc.
        unquote(module) |> apply(unquote(method), [connection, unquote_splicing(args), opts])
      end
    end
  end
end
