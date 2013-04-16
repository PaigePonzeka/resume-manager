class ProjectScreenshotsController < ApplicationController
  # GET /project_screenshots
  # GET /project_screenshots.json
  def index
    @project_screenshots = ProjectScreenshot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_screenshots }
    end
  end

  # GET /project_screenshots/1
  # GET /project_screenshots/1.json
  def show
    @project_screenshot = ProjectScreenshot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_screenshot }
    end
  end

  # GET /project_screenshots/new
  # GET /project_screenshots/new.json
  def new
    @project_screenshot = ProjectScreenshot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_screenshot }
    end
  end

  # GET /project_screenshots/1/edit
  def edit
    @project_screenshot = ProjectScreenshot.find(params[:id])
  end

  # POST /project_screenshots
  # POST /project_screenshots.json
  def create
    @project_screenshot = ProjectScreenshot.new(params[:project_screenshot])

    respond_to do |format|
      if @project_screenshot.save
        format.html { redirect_to @project_screenshot, notice: 'Project screenshot was successfully created.' }
        format.json { render json: @project_screenshot, status: :created, location: @project_screenshot }
      else
        format.html { render action: "new" }
        format.json { render json: @project_screenshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_screenshots/1
  # PUT /project_screenshots/1.json
  def update
    @project_screenshot = ProjectScreenshot.find(params[:id])

    respond_to do |format|
      if @project_screenshot.update_attributes(params[:project_screenshot])
        format.html { redirect_to @project_screenshot, notice: 'Project screenshot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_screenshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_screenshots/1
  # DELETE /project_screenshots/1.json
  def destroy
    @project_screenshot = ProjectScreenshot.find(params[:id])
    @project_screenshot.destroy

    respond_to do |format|
      format.html { redirect_to project_screenshots_url }
      format.json { head :no_content }
    end
  end
end
