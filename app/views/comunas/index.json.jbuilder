json.array!(@comunas) do |comuna|
  json.extract! comuna, :id, :nombre
  json.url comuna_url(comuna, format: :json)
end
