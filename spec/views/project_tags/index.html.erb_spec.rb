require 'spec_helper'

describe "project_tags/index.html.erb" do
  before(:each) do
    assign(:project_tags, [
      stub_model(ProjectTag,
        :project_id => 1,
        :tag_id => 1
      ),
      stub_model(ProjectTag,
        :project_id => 1,
        :tag_id => 1
      )
    ])
  end

  it "renders a list of project_tags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
