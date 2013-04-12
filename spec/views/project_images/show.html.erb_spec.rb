require 'spec_helper'

describe "project_images/show.html.erb" do
  before(:each) do
    @project_image = assign(:project_image, stub_model(ProjectImage,
      :image_id => 1,
      :project_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
