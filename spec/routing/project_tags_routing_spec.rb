require "spec_helper"

describe ProjectTagsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/project_tags" }.should route_to(:controller => "project_tags", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/project_tags/new" }.should route_to(:controller => "project_tags", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/project_tags/1" }.should route_to(:controller => "project_tags", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/project_tags/1/edit" }.should route_to(:controller => "project_tags", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/project_tags" }.should route_to(:controller => "project_tags", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/project_tags/1" }.should route_to(:controller => "project_tags", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/project_tags/1" }.should route_to(:controller => "project_tags", :action => "destroy", :id => "1")
    end

  end
end
