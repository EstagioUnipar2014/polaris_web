json.array!(@ciclos) do |ciclo|
  json.extract! ciclo, :id, :descricao
  json.url ciclo_url(ciclo, format: :json)
end
