json.array!(@imagens) do |imagem|
  json.extract! imagem, :id, :url, :animal_id
  json.url imagem_url(imagem, format: :json)
end
