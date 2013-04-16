require 'spec_helper'

describe "project_screenshots/show.html.erb" do
  before(:each) do
    @project_screenshot = assign(:project_screenshot, stub_model(ProjectScreenshot,
      :project_id => 1,
      :url => "Url",
      :caption => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
