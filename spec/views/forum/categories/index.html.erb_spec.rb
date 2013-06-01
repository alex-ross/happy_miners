require 'spec_helper'

describe "forum/categories/index" do
  before(:each) do
    assign(:forum_categories, [
      stub_model(Forum::Category,
        :name => "Name"
      ),
      stub_model(Forum::Category,
        :name => "Name"
      )
    ])
  end

  it "renders a list of forum/categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
