json.array!(@productos) do |producto|
  json.extract! producto, :id, :sku, :umedida_id, :nombre, :stock_minimo, :stock_critico, :estado
  json.url producto_url(producto, format: :json)
end
