require 'spec_helper'

describe "forum/posts/index" do
  before(:each) do
    assign(:forum_posts, [
      stub_model(Forum::Post,
        :topic => nil,
        :body => "MyText"
      ),
      stub_model(Forum::Post,
        :topic => nil,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of forum/posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
