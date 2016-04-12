json.array!(@build_parts) do |build_part|
  json.extract! build_part, :id, :build_id, :part_id
  json.url build_part_url(build_part, format: :json)
end
