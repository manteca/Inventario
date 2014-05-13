json.array!(@invents) do |invent|
  json.extract! invent, :id, :tipo, :nota
  json.url invent_url(invent, format: :json)
end
