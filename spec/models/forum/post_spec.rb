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
  subject { Forum::Post.new body: 'Lorem ipsum' }

  it { should respond_to :topic }
  it { should respond_to :category }
  it { should respond_to :body }

  describe 'body' do
    it 'wont be valid when less than 3 charakters' do
      subject.body = "Ab"
      subject.valid?.should be_false
    end

    it 'must be valid when more or equal 3 charakters' do
      subject.body = 'Abc'
      subject.valid?.should be_true

      subject.body = ('Long text' * 10)
      subject.valid?.should be_true
    end
  end
end
