json.array!(@classificacoes) do |classificacao|
  json.extract! classificacao, :id, :descricao
  json.url classificacao_url(classificacao, format: :json)
end
