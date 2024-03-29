require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe ProjectScreenshotsController do

  def mock_project_screenshot(stubs={})
    @mock_project_screenshot ||= mock_model(ProjectScreenshot, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all project_screenshots as @project_screenshots" do
      ProjectScreenshot.stub(:all) { [mock_project_screenshot] }
      get :index
      assigns(:project_screenshots).should eq([mock_project_screenshot])
    end
  end

  describe "GET show" do
    it "assigns the requested project_screenshot as @project_screenshot" do
      ProjectScreenshot.stub(:find).with("37") { mock_project_screenshot }
      get :show, :id => "37"
      assigns(:project_screenshot).should be(mock_project_screenshot)
    end
  end

  describe "GET new" do
    it "assigns a new project_screenshot as @project_screenshot" do
      ProjectScreenshot.stub(:new) { mock_project_screenshot }
      get :new
      assigns(:project_screenshot).should be(mock_project_screenshot)
    end
  end

  describe "GET edit" do
    it "assigns the requested project_screenshot as @project_screenshot" do
      ProjectScreenshot.stub(:find).with("37") { mock_project_screenshot }
      get :edit, :id => "37"
      assigns(:project_screenshot).should be(mock_project_screenshot)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created project_screenshot as @project_screenshot" do
        ProjectScreenshot.stub(:new).with({'these' => 'params'}) { mock_project_screenshot(:save => true) }
        post :create, :project_screenshot => {'these' => 'params'}
        assigns(:project_screenshot).should be(mock_project_screenshot)
      end

      it "redirects to the created project_screenshot" do
        ProjectScreenshot.stub(:new) { mock_project_screenshot(:save => true) }
        post :create, :project_screenshot => {}
        response.should redirect_to(project_screenshot_url(mock_project_screenshot))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved project_screenshot as @project_screenshot" do
        ProjectScreenshot.stub(:new).with({'these' => 'params'}) { mock_project_screenshot(:save => false) }
        post :create, :project_screenshot => {'these' => 'params'}
        assigns(:project_screenshot).should be(mock_project_screenshot)
      end

      it "re-renders the 'new' template" do
        ProjectScreenshot.stub(:new) { mock_project_screenshot(:save => false) }
        post :create, :project_screenshot => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested project_screenshot" do
        ProjectScreenshot.stub(:find).with("37") { mock_project_screenshot }
        mock_project_screenshot.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :project_screenshot => {'these' => 'params'}
      end

      it "assigns the requested project_screenshot as @project_screenshot" do
        ProjectScreenshot.stub(:find) { mock_project_screenshot(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:project_screenshot).should be(mock_project_screenshot)
      end

      it "redirects to the project_screenshot" do
        ProjectScreenshot.stub(:find) { mock_project_screenshot(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(project_screenshot_url(mock_project_screenshot))
      end
    end

    describe "with invalid params" do
      it "assigns the project_screenshot as @project_screenshot" do
        ProjectScreenshot.stub(:find) { mock_project_screenshot(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:project_screenshot).should be(mock_project_screenshot)
      end

      it "re-renders the 'edit' template" do
        ProjectScreenshot.stub(:find) { mock_project_screenshot(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested project_screenshot" do
      ProjectScreenshot.stub(:find).with("37") { mock_project_screenshot }
      mock_project_screenshot.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the project_screenshots list" do
      ProjectScreenshot.stub(:find) { mock_project_screenshot }
      delete :destroy, :id => "1"
      response.should redirect_to(project_screenshots_url)
    end
  end

end
