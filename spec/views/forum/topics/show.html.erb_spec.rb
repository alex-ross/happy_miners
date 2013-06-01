require 'spec_helper'

describe "forum/topics/show" do
  before(:each) do
    @forum_topic = assign(:forum_topic, stub_model(Forum::Topic,
      :category => nil,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Title/)
  end
end
