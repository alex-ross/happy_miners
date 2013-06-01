require 'spec_helper'

describe "forum/posts/show" do
  before(:each) do
    @forum_post = assign(:forum_post, stub_model(Forum::Post,
      :topic => nil,
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end
