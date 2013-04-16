require 'spec_helper'

describe "project_screenshots/edit.html.erb" do
  before(:each) do
    @project_screenshot = assign(:project_screenshot, stub_model(ProjectScreenshot,
      :project_id => 1,
      :url => "MyString",
      :caption => "MyText"
    ))
  end

  it "renders the edit project_screenshot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_screenshots_path(@project_screenshot), :method => "post" do
      assert_select "input#project_screenshot_project_id", :name => "project_screenshot[project_id]"
      assert_select "input#project_screenshot_url", :name => "project_screenshot[url]"
      assert_select "textarea#project_screenshot_caption", :name => "project_screenshot[caption]"
    end
  end
end
