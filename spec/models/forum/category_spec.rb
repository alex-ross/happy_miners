# == Schema Information
#
# Table name: forum_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Forum::Category do
  subject { Forum::Category.new name: 'Name' }

  it { should respond_to :topics }
  it { should respond_to :posts }
  it { should respond_to :name }

  describe 'name' do
    it 'wont be valid when blank' do
      subject.name = ''
      subject.valid?.should be_false
    end

    it 'must be valid when present' do
      subject.name = 'Something'
      subject.valid?.should be_true
    end
  end
end
