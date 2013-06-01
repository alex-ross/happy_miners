require 'spec_helper'

describe "forum/categories/edit" do
  before(:each) do
    @forum_category = assign(:forum_category, stub_model(Forum::Category,
      :name => "MyString"
    ))
  end

  it "renders the edit forum_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", forum_category_path(@forum_category), "post" do
      assert_select "input#forum_category_name[name=?]", "forum_category[name]"
    end
  end
end
