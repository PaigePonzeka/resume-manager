require 'spec_helper'

describe "project_tags/new.html.erb" do
  before(:each) do
    assign(:project_tag, stub_model(ProjectTag,
      :project_id => 1,
      :tag_id => 1
    ).as_new_record)
  end

  it "renders new project_tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_tags_path, :method => "post" do
      assert_select "input#project_tag_project_id", :name => "project_tag[project_id]"
      assert_select "input#project_tag_tag_id", :name => "project_tag[tag_id]"
    end
  end
end
