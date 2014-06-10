json.array!(@tipo_exames) do |tipo_exame|
  json.extract! tipo_exame, :id, :descricao
  json.url tipo_exame_url(tipo_exame, format: :json)
end
