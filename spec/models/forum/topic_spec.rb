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
  subject { Forum::Topic.new title: 'My title' }

  it { should respond_to :title }
  it { should respond_to :category }

  describe 'title' do
    it 'wont be valid when blank' do
      subject.title = ''
      subject.valid?.should be_false
    end

    it 'must be valid when present' do
      subject.title = 'Something'
      subject.valid?.should be_true
    end
  end
end
