json.array!(@contas) do |conta|
  json.extract! conta, :id
  json.url conta_url(conta, format: :json)
end
