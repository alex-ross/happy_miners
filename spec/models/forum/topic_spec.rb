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

require 'spec_helper'

describe Forum::Topic do
  pending "add some examples to (or delete) #{__FILE__}"
end
