json.array!(@medicamentos) do |medicamento|
  json.extract! medicamento, :id, :nome, :tipo_medicamento_id
  json.url medicamento_url(medicamento, format: :json)
end
