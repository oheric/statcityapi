json.array!(@teams) do |team|
  json.extract! team, :id
  json.url teams_url(team, format: :json)
end
