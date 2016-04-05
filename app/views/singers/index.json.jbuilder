json.array!(@singers) do |singer|
  json.extract! singer, :id, :name, :lyrics
  json.url singer_url(singer, format: :json)
end
