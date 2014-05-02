json.array!(@tunes) do |tune|
  json.extract! tune, :id, :title, :composer, :key, :meter, :tune_type, :collection_id
  json.url tune_url(tune, format: :json)
end
