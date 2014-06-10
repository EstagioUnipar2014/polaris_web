json.array!(@ordenhas) do |ordenha|
  json.extract! ordenha, :id, :data, :periodo, :quantidade, :animal_id
  json.url ordenha_url(ordenha, format: :json)
end
