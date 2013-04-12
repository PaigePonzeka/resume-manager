require 'spec_helper'

describe "project_images/edit.html.erb" do
  before(:each) do
    @project_image = assign(:project_image, stub_model(ProjectImage,
      :image_id => 1,
      :project_id => 1
    ))
  end

  it "renders the edit project_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_images_path(@project_image), :method => "post" do
      assert_select "input#project_image_image_id", :name => "project_image[image_id]"
      assert_select "input#project_image_project_id", :name => "project_image[project_id]"
    end
  end
end
