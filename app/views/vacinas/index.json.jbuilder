json.array!(@vacinas) do |vacina|
  json.extract! vacina, :id, :data_vacina, :efetuada, :dosagem, :animal_id, :tipo_vacina_id
  json.url vacina_url(vacina, format: :json)
end
