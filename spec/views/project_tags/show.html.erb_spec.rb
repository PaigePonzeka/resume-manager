require 'spec_helper'

describe "project_tags/show.html.erb" do
  before(:each) do
    @project_tag = assign(:project_tag, stub_model(ProjectTag,
      :project_id => 1,
      :tag_id => 1
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
