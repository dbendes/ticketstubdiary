json.array!(@parts) do |part|
  json.extract! part, :id, :custom, :desc
  json.url part_url(part, format: :json)
end
