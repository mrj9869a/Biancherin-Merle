json.array!(@model_names) do |model_name|
  json.extract! model_name, :id, :element, :etc
  json.url model_name_url(model_name, format: :json)
end
