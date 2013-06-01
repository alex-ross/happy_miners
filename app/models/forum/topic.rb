# == Schema Information
#
# Table name: forum_topics
#
#  id          :integer          not null, primary key
#  category_id :integer
#  title       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Forum::Topic < ActiveRecord::Base
  belongs_to :category, class_name: 'Forum::Category'

  validates :title, presence: true
end
