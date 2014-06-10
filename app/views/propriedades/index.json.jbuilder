json.array!(@propriedades) do |propriedade|
  json.extract! propriedade, :id, :nome
  json.url propriedade_url(propriedade, format: :json)
end
