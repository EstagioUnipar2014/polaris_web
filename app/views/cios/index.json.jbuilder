json.array!(@cios) do |cio|
  json.extract! cio, :id, :data_cio, :previsao_proximo, :animal_id
  json.url cio_url(cio, format: :json)
end
