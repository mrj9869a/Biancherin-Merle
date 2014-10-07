json.array!(@motos) do |moto|
  json.extract! moto, :id, :marque, :description
  json.url moto_url(moto, format: :json)
end
