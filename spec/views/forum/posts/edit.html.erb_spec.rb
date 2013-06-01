require 'spec_helper'

describe "forum/posts/edit" do
  before(:each) do
    @forum_post = assign(:forum_post, stub_model(Forum::Post,
      :topic => nil,
      :body => "MyText"
    ))
  end

  it "renders the edit forum_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", forum_post_path(@forum_post), "post" do
      assert_select "input#forum_post_topic[name=?]", "forum_post[topic]"
      assert_select "textarea#forum_post_body[name=?]", "forum_post[body]"
    end
  end
end
