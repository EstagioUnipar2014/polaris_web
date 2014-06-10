json.array!(@racas) do |raca|
  json.extract! raca, :id, :nome
  json.url raca_url(raca, format: :json)
end
