json.array!(@dietas) do |dieta|
  json.extract! dieta, :id, :descricao
  json.url dieta_url(dieta, format: :json)
end
