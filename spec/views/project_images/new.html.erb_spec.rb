require 'spec_helper'

describe "project_images/new.html.erb" do
  before(:each) do
    assign(:project_image, stub_model(ProjectImage,
      :image_id => 1,
      :project_id => 1
    ).as_new_record)
  end

  it "renders new project_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_images_path, :method => "post" do
      assert_select "input#project_image_image_id", :name => "project_image[image_id]"
      assert_select "input#project_image_project_id", :name => "project_image[project_id]"
    end
  end
end
