require 'spec_helper'

describe "project_screenshots/index.html.erb" do
  before(:each) do
    assign(:project_screenshots, [
      stub_model(ProjectScreenshot,
        :project_id => 1,
        :url => "Url",
        :caption => "MyText"
      ),
      stub_model(ProjectScreenshot,
        :project_id => 1,
        :url => "Url",
        :caption => "MyText"
      )
    ])
  end

  it "renders a list of project_screenshots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
