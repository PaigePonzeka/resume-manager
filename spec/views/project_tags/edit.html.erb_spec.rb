require 'spec_helper'

describe "project_tags/edit.html.erb" do
  before(:each) do
    @project_tag = assign(:project_tag, stub_model(ProjectTag,
      :project_id => 1,
      :tag_id => 1
    ))
  end

  it "renders the edit project_tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_tags_path(@project_tag), :method => "post" do
      assert_select "input#project_tag_project_id", :name => "project_tag[project_id]"
      assert_select "input#project_tag_tag_id", :name => "project_tag[tag_id]"
    end
  end
end
