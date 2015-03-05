json.array!(@concerts) do |concert|
  json.extract! concert, :id, :date, :venue_id
  json.url concert_url(concert, format: :json)
end
