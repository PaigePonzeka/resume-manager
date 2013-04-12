require "spec_helper"

describe ProjectImagesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/project_images" }.should route_to(:controller => "project_images", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/project_images/new" }.should route_to(:controller => "project_images", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/project_images/1" }.should route_to(:controller => "project_images", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/project_images/1/edit" }.should route_to(:controller => "project_images", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/project_images" }.should route_to(:controller => "project_images", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/project_images/1" }.should route_to(:controller => "project_images", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/project_images/1" }.should route_to(:controller => "project_images", :action => "destroy", :id => "1")
    end

  end
end
