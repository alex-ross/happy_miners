json.array!(@forum_categories) do |forum_category|
  json.extract! forum_category, :name
  json.url forum_category_url(forum_category, format: :json)
end