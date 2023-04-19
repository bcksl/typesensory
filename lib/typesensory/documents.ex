defmodule Typesensory.Documents do
  import Typesensory.Proxy
  alias Typesensory.Api.Documents

  proxy Documents, :delete_document, [collection_name, document_id]
  proxy Documents, :delete_documents, [collection_name]
  proxy Documents, :delete_search_override, [collection_name, override_id]
  proxy Documents, :delete_search_synonym, [collection_name, synonym_id]
  proxy Documents, :export_documents, [collection_name]
  proxy Documents, :get_document, [collection_name, document_id]
  proxy Documents, :get_search_override, [collection_name, override_id]
  proxy Documents, :get_search_overrides, [collection_name]
  proxy Documents, :get_search_synonym, [collection_name, synonym_id]
  proxy Documents, :get_search_synonyms, [collection_name]
  proxy Documents, :import_documents, [collection_name, body]
  proxy Documents, :index_document, [collection_name, body]
  proxy Documents, :multi_search, [multi_search_parameters]
  proxy Documents, :search_collection, [collection_name, search_parameters]
  proxy Documents, :update_document, [collection_name, document_id, body]
  proxy Documents, :update_documents, [collection_name, body]
  proxy Documents, :upsert_search_override, [collection_name, override_id, search_override_schema]
  proxy Documents, :upsert_search_synonym, [collection_name, synonym_id, search_synonym_schema]
end
