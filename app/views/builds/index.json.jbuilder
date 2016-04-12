json.array!(@builds) do |build|
  json.extract! build, :id, :bom_date, :prod_start_date, :corrugate_due_date, :production_end_date, :quantity
  json.url build_url(build, format: :json)
end
