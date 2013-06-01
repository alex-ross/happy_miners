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

require 'spec_helper'

describe Forum::Post do
  pending "add some examples to (or delete) #{__FILE__}"
end
