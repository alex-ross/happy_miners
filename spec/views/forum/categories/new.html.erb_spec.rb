require 'spec_helper'

describe "forum/categories/new" do
  before(:each) do
    assign(:forum_category, stub_model(Forum::Category,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new forum_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", forum_categories_path, "post" do
      assert_select "input#forum_category_name[name=?]", "forum_category[name]"
    end
  end
end
