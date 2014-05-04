json.array!(@umedidas) do |umedida|
  json.extract! umedida, :id, :nombre
  json.url umedida_url(umedida, format: :json)
end
