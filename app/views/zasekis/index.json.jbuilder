json.array!(@zasekis) do |zaseki|
  json.extract! zaseki, :id, :name, :address
  json.url zaseki_url(zaseki, format: :json)
end
