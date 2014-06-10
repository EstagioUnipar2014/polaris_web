json.array!(@tipo_medicamentos) do |tipo_medicamento|
  json.extract! tipo_medicamento, :id, :descricao
  json.url tipo_medicamento_url(tipo_medicamento, format: :json)
end
