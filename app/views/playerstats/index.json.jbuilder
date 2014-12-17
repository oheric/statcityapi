json.array!(@playerstats) do |ps|
  json.extract! ps, :id
  json.url playerstats_url(position, format: :json)
end
