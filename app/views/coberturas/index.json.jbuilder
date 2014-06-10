json.array!(@coberturas) do |cobertura|
  json.extract! cobertura, :id, :data, :cio_id, :animal_id
  json.url cobertura_url(cobertura, format: :json)
end
