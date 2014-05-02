json.array!(@collections) do |collection|
  json.extract! collection, :id, :title, :collector, :publication_year
  json.url collection_url(collection, format: :json)
end
