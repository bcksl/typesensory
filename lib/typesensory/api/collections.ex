# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Api.Collections do
  @moduledoc """
  API calls for all endpoints tagged `Collections`.
  """

  alias Typesensory.Connection
  import Typesensory.RequestBuilder

  @doc """
  Create a new collection
  When a collection is created, we give it a name and describe the fields that will be indexed from the documents added to the collection.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_schema` (CollectionSchema): The collection object to be created
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.CollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_collection(Tesla.Env.client, Typesensory.Model.CollectionSchema.t, keyword()) :: {:ok, Typesensory.Model.CollectionResponse.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def create_collection(connection, collection_schema, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/collections")
      |> add_param(:body, :body, collection_schema)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %Typesensory.Model.CollectionResponse{}},
      {400, %Typesensory.Model.ApiResponse{}},
      {409, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Delete an alias

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `alias_name` (String.t): The name of the alias to delete
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.CollectionAlias.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_alias(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.CollectionAlias.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def delete_alias(connection, alias_name, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/aliases/#{alias_name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.CollectionAlias{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Delete a collection
  Permanently drops a collection. This action cannot be undone. For large collections, this might have an impact on read latencies.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to delete
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.CollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_collection(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.CollectionResponse.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def delete_collection(connection, collection_name, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/collections/#{collection_name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.CollectionResponse{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Retrieve an alias
  Find out which collection an alias points to by fetching it

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `alias_name` (String.t): The name of the alias to retrieve
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.CollectionAlias.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_alias(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.CollectionAlias.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def get_alias(connection, alias_name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/aliases/#{alias_name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.CollectionAlias{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  List all aliases
  List all aliases and the corresponding collections that they map to.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.CollectionAliasesResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_aliases(Tesla.Env.client, keyword()) :: {:ok, Typesensory.Model.CollectionAliasesResponse.t} | {:error, Tesla.Env.t}
  def get_aliases(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/aliases")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.CollectionAliasesResponse{}}
    ])
  end

  @doc """
  Retrieve a single collection
  Retrieve the details of a collection, given its name.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to retrieve
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.CollectionResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_collection(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.CollectionResponse.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def get_collection(connection, collection_name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/collections/#{collection_name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.CollectionResponse{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  List all collections
  Returns a summary of all your collections. The collections are returned sorted by creation date, with the most recent collections appearing first.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%CollectionResponse{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_collections(Tesla.Env.client, keyword()) :: {:ok, list(Typesensory.Model.CollectionResponse.t)} | {:error, Tesla.Env.t}
  def get_collections(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/collections")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Typesensory.Model.CollectionResponse{}]}
    ])
  end

  @doc """
  Update a collection
  Update a collection's schema to modify the fields and their types.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to update
  - `collection_update_schema` (CollectionUpdateSchema): The document object with fields to be updated
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.CollectionUpdateSchema.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_collection(Tesla.Env.client, String.t, Typesensory.Model.CollectionUpdateSchema.t, keyword()) :: {:ok, Typesensory.Model.ApiResponse.t} | {:ok, Typesensory.Model.CollectionUpdateSchema.t} | {:error, Tesla.Env.t}
  def update_collection(connection, collection_name, collection_update_schema, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/collections/#{collection_name}")
      |> add_param(:body, :body, collection_update_schema)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.CollectionUpdateSchema{}},
      {400, %Typesensory.Model.ApiResponse{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Create or update a collection alias
  Create or update a collection alias. An alias is a virtual collection name that points to a real collection. If you're familiar with symbolic links on Linux, it's very similar to that. Aliases are useful when you want to reindex your data in the background on a new collection and switch your application to it without any changes to your code.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `alias_name` (String.t): The name of the alias to create/update
  - `opts` (keyword): Optional parameters
    - `:body` (CollectionAliasSchema): Collection alias to be created/updated

  ### Returns

  - `{:ok, Typesensory.Model.CollectionAlias.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec upsert_alias(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.CollectionAlias.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def upsert_alias(connection, alias_name, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/aliases/#{alias_name}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.CollectionAlias{}},
      {400, %Typesensory.Model.ApiResponse{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end
end
