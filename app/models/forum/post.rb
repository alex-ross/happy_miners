# == Schema Information
#
# Table name: forum_posts
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Forum::Post < ActiveRecord::Base
  belongs_to :topic,    class_name: "Forum::Topic"
  has_one    :category, through: :topic

  validates :body, length: { minimum: 3 }
end
