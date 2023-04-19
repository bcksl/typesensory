# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Api.Override do
  @moduledoc """
  API calls for all endpoints tagged `Override`.
  """

  alias Typesensory.Connection
  import Typesensory.RequestBuilder

  @doc """
  Retrieve a single search override
  Retrieve the details of a search override, given its id.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `override_id` (String.t): The id of the search override
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchOverride.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_search_override(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Typesensory.Model.SearchOverride.t} | {:error, Tesla.Env.t}
  def get_search_override(connection, collection_name, override_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/collections/#{collection_name}/overrides/#{override_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchOverride{}}
    ])
  end
end
