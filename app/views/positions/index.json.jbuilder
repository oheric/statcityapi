json.array!(@positions) do |position|
  json.extract! position, :id
  json.url planet_url(position, format: :json)
end
