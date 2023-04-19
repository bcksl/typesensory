# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Api.Operations do
  @moduledoc """
  API calls for all endpoints tagged `Operations`.
  """

  alias Typesensory.Connection
  import Typesensory.RequestBuilder

  @doc """
  Creates a point-in-time snapshot of a Typesense node's state and data in the specified directory.
  Creates a point-in-time snapshot of a Typesense node's state and data in the specified directory. You can then backup the snapshot directory that gets created and later restore it as a data directory, as needed.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `snapshot_path` (String.t): The directory on the server where the snapshot should be saved.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SuccessStatus.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec take_snapshot(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Typesensory.Model.SuccessStatus.t()} | {:error, Tesla.Env.t()}
  def take_snapshot(connection, snapshot_path, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/operations/snapshot")
      |> add_param(:query, :snapshot_path, snapshot_path)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %Typesensory.Model.SuccessStatus{}}
    ])
  end

  @doc """
  Triggers a follower node to initiate the raft voting process, which triggers leader re-election.
  Triggers a follower node to initiate the raft voting process, which triggers leader re-election. The follower node that you run this operation against will become the new leader, once this command succeeds.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SuccessStatus.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec vote(Tesla.Env.client(), keyword()) ::
          {:ok, Typesensory.Model.SuccessStatus.t()} | {:error, Tesla.Env.t()}
  def vote(connection, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/operations/vote")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SuccessStatus{}}
    ])
  end
end
