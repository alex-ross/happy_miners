require 'spec_helper'

describe "forum/topics/index" do
  before(:each) do
    assign(:forum_topics, [
      stub_model(Forum::Topic,
        :category => nil,
        :title => "Title"
      ),
      stub_model(Forum::Topic,
        :category => nil,
        :title => "Title"
      )
    ])
  end

  it "renders a list of forum/topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
