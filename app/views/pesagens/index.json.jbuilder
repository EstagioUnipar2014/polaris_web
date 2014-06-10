json.array!(@pesagens) do |pesagem|
  json.extract! pesagem, :id, :peso, :data_pesagem, :animal_id
  json.url pesagem_url(pesagem, format: :json)
end
