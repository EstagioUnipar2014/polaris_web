json.array!(@dieta) do |dietum|
  json.extract! dietum, :id, :descricao
  json.url dietum_url(dietum, format: :json)
end
