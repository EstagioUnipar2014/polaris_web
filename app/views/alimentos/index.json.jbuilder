json.array!(@alimentos) do |alimento|
  json.extract! alimento, :id, :descricao
  json.url alimento_url(alimento, format: :json)
end
