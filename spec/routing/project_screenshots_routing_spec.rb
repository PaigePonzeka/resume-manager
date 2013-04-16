require "spec_helper"

describe ProjectScreenshotsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/project_screenshots" }.should route_to(:controller => "project_screenshots", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/project_screenshots/new" }.should route_to(:controller => "project_screenshots", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/project_screenshots/1" }.should route_to(:controller => "project_screenshots", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/project_screenshots/1/edit" }.should route_to(:controller => "project_screenshots", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/project_screenshots" }.should route_to(:controller => "project_screenshots", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/project_screenshots/1" }.should route_to(:controller => "project_screenshots", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/project_screenshots/1" }.should route_to(:controller => "project_screenshots", :action => "destroy", :id => "1")
    end

  end
end
