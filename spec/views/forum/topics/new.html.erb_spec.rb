require 'spec_helper'

describe "forum/topics/new" do
  before(:each) do
    assign(:forum_topic, stub_model(Forum::Topic,
      :category => nil,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new forum_topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", forum_topics_path, "post" do
      assert_select "input#forum_topic_category[name=?]", "forum_topic[category]"
      assert_select "input#forum_topic_title[name=?]", "forum_topic[title]"
    end
  end
end
