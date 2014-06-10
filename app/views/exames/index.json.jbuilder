json.array!(@exames) do |exame|
  json.extract! exame, :id, :data, :descricao, :efetuado, :resultado, :informacoes, :animal_id, :tipo_exame_id
  json.url exame_url(exame, format: :json)
end
