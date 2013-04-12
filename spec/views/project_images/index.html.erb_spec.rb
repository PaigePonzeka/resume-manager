require 'spec_helper'

describe "project_images/index.html.erb" do
  before(:each) do
    assign(:project_images, [
      stub_model(ProjectImage,
        :image_id => 1,
        :project_id => 1
      ),
      stub_model(ProjectImage,
        :image_id => 1,
        :project_id => 1
      )
    ])
  end

  it "renders a list of project_images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
