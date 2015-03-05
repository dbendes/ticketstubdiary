json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :website, :street, :city, :state, :zip, :sgID
  json.url venue_url(venue, format: :json)
end
