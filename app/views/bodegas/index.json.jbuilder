json.array!(@bodegas) do |bodega|
  json.extract! bodega, :id, :nombre
  json.url bodega_url(bodega, format: :json)
end
