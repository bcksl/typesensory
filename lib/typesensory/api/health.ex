# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Api.Health do
  @moduledoc """
  API calls for all endpoints tagged `Health`.
  """

  alias Typesensory.Connection
  import Typesensory.RequestBuilder

  @doc """
  Checks if Typesense server is ready to accept requests.
  Checks if Typesense server is ready to accept requests.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.HealthStatus.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec health(Tesla.Env.client, keyword()) :: {:ok, Typesensory.Model.HealthStatus.t} | {:error, Tesla.Env.t}
  def health(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/health")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.HealthStatus{}}
    ])
  end
end
