# NOTE: This file is auto generated by OpenAPI Generator 6.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Typesensory.Api.Documents do
  @moduledoc """
  API calls for all endpoints tagged `Documents`.
  """

  alias Typesensory.Connection
  import Typesensory.RequestBuilder

  @doc """
  Delete a document
  Delete an individual document from a collection by using its ID.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to search for the document under
  - `document_id` (String.t): The Document ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, map()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_document(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Map.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def delete_document(connection, collection_name, document_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/collections/#{collection_name}/documents/#{document_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Delete a bunch of documents
  Delete a bunch of documents that match a specific filter condition. Use the `batch_size` parameter to control the number of documents that should deleted at a time. A larger value will speed up deletions, but will impact performance of other operations running on the server.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to delete documents from
  - `opts` (keyword): Optional parameters
    - `:deleteDocumentsParameters` (DeleteDocumentsDeleteDocumentsParametersParameter): 

  ### Returns

  - `{:ok, Typesensory.Model.DeleteDocuments200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_documents(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.DeleteDocuments200Response.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def delete_documents(connection, collection_name, opts \\ []) do
    optional_params = %{
      :deleteDocumentsParameters => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/collections/#{collection_name}/documents")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.DeleteDocuments200Response{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Delete an override associated with a collection

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `override_id` (String.t): The ID of the search override to delete
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchOverride.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_search_override(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Typesensory.Model.ApiResponse.t} | {:ok, Typesensory.Model.SearchOverride.t} | {:error, Tesla.Env.t}
  def delete_search_override(connection, collection_name, override_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/collections/#{collection_name}/overrides/#{override_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchOverride{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Delete a synonym associated with a collection

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `synonym_id` (String.t): The ID of the search synonym to delete
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchSynonym.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_search_synonym(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Typesensory.Model.SearchSynonym.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def delete_search_synonym(connection, collection_name, synonym_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/collections/#{collection_name}/synonyms/#{synonym_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchSynonym{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Export all documents in a collection
  Export all documents in a collection in JSON lines format.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `opts` (keyword): Optional parameters
    - `:exportDocumentsParameters` (ExportDocumentsExportDocumentsParametersParameter): 

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec export_documents(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.ApiResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def export_documents(connection, collection_name, opts \\ []) do
    optional_params = %{
      :exportDocumentsParameters => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/collections/#{collection_name}/documents/export")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Retreive a document
  Fetch an individual document from a collection by using its ID.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to search for the document under
  - `document_id` (String.t): The Document ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, map()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_document(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Map.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def get_document(connection, collection_name, document_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/collections/#{collection_name}/documents/#{document_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

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

  @doc """
  List all collection overrides

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchOverridesResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_search_overrides(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.SearchOverridesResponse.t} | {:error, Tesla.Env.t}
  def get_search_overrides(connection, collection_name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/collections/#{collection_name}/overrides")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchOverridesResponse{}}
    ])
  end

  @doc """
  Retrieve a single search synonym
  Retrieve the details of a search synonym, given its id.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `synonym_id` (String.t): The id of the search synonym
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchSynonym.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_search_synonym(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Typesensory.Model.SearchSynonym.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def get_search_synonym(connection, collection_name, synonym_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/collections/#{collection_name}/synonyms/#{synonym_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchSynonym{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  List all collection synonyms

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchSynonymsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_search_synonyms(Tesla.Env.client, String.t, keyword()) :: {:ok, Typesensory.Model.SearchSynonymsResponse.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def get_search_synonyms(connection, collection_name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/collections/#{collection_name}/synonyms")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchSynonymsResponse{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Import documents into a collection
  The documents to be imported must be formatted in a newline delimited JSON structure. You can feed the output file from a Typesense export operation directly as import.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `body` (String.t): The json array of documents or the JSONL file to import
  - `opts` (keyword): Optional parameters
    - `:importDocumentsParameters` (ImportDocumentsImportDocumentsParametersParameter): 

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec import_documents(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Typesensory.Model.ApiResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def import_documents(connection, collection_name, body, opts \\ []) do
    optional_params = %{
      :importDocumentsParameters => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/collections/#{collection_name}/documents/import")
      |> add_param(:body, :body, body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, %Typesensory.Model.ApiResponse{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Index a document
  A document to be indexed in a given collection must conform to the schema of the collection.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to add the document to
  - `body` (map()): The document object to be indexed
  - `opts` (keyword): Optional parameters
    - `:action` (String.t): Additional action to perform

  ### Returns

  - `{:ok, map()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec index_document(Tesla.Env.client, String.t, %{optional(String.t) => }, keyword()) :: {:ok, Map.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def index_document(connection, collection_name, body, opts \\ []) do
    optional_params = %{
      :action => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/collections/#{collection_name}/documents")
      |> add_param(:body, :body, body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  send multiple search requests in a single HTTP request
  This is especially useful to avoid round-trip network latencies incurred otherwise if each of these requests are sent in separate HTTP requests. You can also use this feature to do a federated search across multiple collections in a single HTTP request.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `multi_search_parameters` (MultiSearchParameters): 
  - `opts` (keyword): Optional parameters
    - `:body` (MultiSearchSearchesParameter): 

  ### Returns

  - `{:ok, Typesensory.Model.MultiSearchResult.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec multi_search(Tesla.Env.client, %{optional(String.t) => }, keyword()) :: {:ok, Typesensory.Model.ApiResponse.t} | {:ok, Typesensory.Model.MultiSearchResult.t} | {:error, Tesla.Env.t}
  def multi_search(connection, multi_search_parameters, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/multi_search")
      |> add_param(:query, :multiSearchParameters, multi_search_parameters)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.MultiSearchResult{}},
      {400, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Search for documents in a collection
  Search for documents in a collection that match the search criteria.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to search for the document under
  - `search_parameters` (SearchParameters): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchResult.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_collection(Tesla.Env.client, String.t, %{optional(String.t) => }, keyword()) :: {:ok, Typesensory.Model.ApiResponse.t} | {:ok, Typesensory.Model.SearchResult.t} | {:error, Tesla.Env.t}
  def search_collection(connection, collection_name, search_parameters, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/collections/#{collection_name}/documents/search")
      |> add_param(:query, :searchParameters, search_parameters)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchResult{}},
      {400, %Typesensory.Model.ApiResponse{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Update a document
  Update an individual document from a collection by using its ID. The update can be partial.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to search for the document under
  - `document_id` (String.t): The Document ID
  - `body` (map()): The document object with fields to be updated
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, map()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_document(Tesla.Env.client, String.t, String.t, %{optional(String.t) => }, keyword()) :: {:ok, Map.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def update_document(connection, collection_name, document_id, body, _opts \\ []) do
    request =
      %{}
      |> method(:patch)
      |> url("/collections/#{collection_name}/documents/#{document_id}")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Update documents with conditional query
  The filter_by query parameter is used to filter to specify a condition against which the documents are matched. The request body contains the fields that should be updated for any documents that match the filter condition. This endpoint is only available if the Typesense server is version `0.25.0.rc12` or later.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection to update documents in
  - `body` (map()): The document fields to be updated
  - `opts` (keyword): Optional parameters
    - `:updateDocumentsParameters` (UpdateDocumentsUpdateDocumentsParametersParameter): 

  ### Returns

  - `{:ok, Typesensory.Model.UpdateDocuments200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_documents(Tesla.Env.client, String.t, %{optional(String.t) => }, keyword()) :: {:ok, Typesensory.Model.ApiResponse.t} | {:ok, Typesensory.Model.UpdateDocuments200Response.t} | {:error, Tesla.Env.t}
  def update_documents(connection, collection_name, body, opts \\ []) do
    optional_params = %{
      :updateDocumentsParameters => :query
    }

    request =
      %{}
      |> method(:patch)
      |> url("/collections/#{collection_name}/documents")
      |> add_param(:body, :body, body)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.UpdateDocuments200Response{}},
      {400, %Typesensory.Model.ApiResponse{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Create or update an override to promote certain documents over others
  Create or update an override to promote certain documents over others. Using overrides, you can include or exclude specific documents for a given query.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `override_id` (String.t): The ID of the search override to create/update
  - `search_override_schema` (SearchOverrideSchema): The search override object to be created/updated
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchOverride.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec upsert_search_override(Tesla.Env.client, String.t, String.t, Typesensory.Model.SearchOverrideSchema.t, keyword()) :: {:ok, Typesensory.Model.ApiResponse.t} | {:ok, Typesensory.Model.SearchOverride.t} | {:error, Tesla.Env.t}
  def upsert_search_override(connection, collection_name, override_id, search_override_schema, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/collections/#{collection_name}/overrides/#{override_id}")
      |> add_param(:body, :body, search_override_schema)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchOverride{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end

  @doc """
  Create or update a synonym
  Create or update a synonym  to define search terms that should be considered equivalent.

  ### Parameters

  - `connection` (Typesensory.Connection): Connection to server
  - `collection_name` (String.t): The name of the collection
  - `synonym_id` (String.t): The ID of the search synonym to create/update
  - `search_synonym_schema` (SearchSynonymSchema): The search synonym object to be created/updated
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Typesensory.Model.SearchSynonym.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec upsert_search_synonym(Tesla.Env.client, String.t, String.t, Typesensory.Model.SearchSynonymSchema.t, keyword()) :: {:ok, Typesensory.Model.SearchSynonym.t} | {:ok, Typesensory.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def upsert_search_synonym(connection, collection_name, synonym_id, search_synonym_schema, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/collections/#{collection_name}/synonyms/#{synonym_id}")
      |> add_param(:body, :body, search_synonym_schema)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Typesensory.Model.SearchSynonym{}},
      {404, %Typesensory.Model.ApiResponse{}}
    ])
  end
end