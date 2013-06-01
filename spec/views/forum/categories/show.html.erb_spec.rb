require 'spec_helper'

describe "forum/categories/show" do
  before(:each) do
    @forum_category = assign(:forum_category, stub_model(Forum::Category,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
