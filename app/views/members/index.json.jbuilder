json.array!(@members) do |member|
  json.extract! member, :id, :name, :age, :company, :about
  json.url member_url(member, format: :json)
end
