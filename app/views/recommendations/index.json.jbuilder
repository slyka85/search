json.array!(@recommendations) do |recommendation|
  json.extract! recommendation, :id, :title, :location, :category, :description, :imageUrl
  json.url recommendation_url(recommendation, format: :json)
end
