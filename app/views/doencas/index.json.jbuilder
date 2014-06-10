json.array!(@doencas) do |doenca|
  json.extract! doenca, :id, :nome, :descricao
  json.url doenca_url(doenca, format: :json)
end
