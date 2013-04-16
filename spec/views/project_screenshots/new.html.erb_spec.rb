require 'spec_helper'

describe "project_screenshots/new.html.erb" do
  before(:each) do
    assign(:project_screenshot, stub_model(ProjectScreenshot,
      :project_id => 1,
      :url => "MyString",
      :caption => "MyText"
    ).as_new_record)
  end

  it "renders new project_screenshot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_screenshots_path, :method => "post" do
      assert_select "input#project_screenshot_project_id", :name => "project_screenshot[project_id]"
      assert_select "input#project_screenshot_url", :name => "project_screenshot[url]"
      assert_select "textarea#project_screenshot_caption", :name => "project_screenshot[caption]"
    end
  end
end
