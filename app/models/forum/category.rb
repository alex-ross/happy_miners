# == Schema Information
#
# Table name: forum_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Forum::Category < ActiveRecord::Base
  has_many :topics, class_name: 'Forum::Topic'
  has_many :posts, through: :topics

  validates :name, presence: true
end
