json.array!(@animais) do |animal|
  json.extract! animal, :id, :identificacao, :nome, :data_nascimento, :sexo, :ativo, :lactacao, :nascido_na_propriedade, :informacoes
  json.url animal_url(animal, format: :json)
end
