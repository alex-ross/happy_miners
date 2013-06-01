json.array!(@forum_topics) do |forum_topic|
  json.extract! forum_topic, :category_id, :title
  json.url forum_topic_url(forum_topic, format: :json)
end