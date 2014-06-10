json.array!(@proprietarios) do |proprietario|
  json.extract! proprietario, :id, :nome, :data_nascimento, :cpf
  json.url proprietario_url(proprietario, format: :json)
end
