class ProjectTagsController < ApplicationController
  # GET /project_tags
  # GET /project_tags.json
  def index
    @project_tags = ProjectTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_tags }
    end
  end

  # GET /project_tags/1
  # GET /project_tags/1.json
  def show
    @project_tag = ProjectTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_tag }
    end
  end

  # GET /project_tags/new
  # GET /project_tags/new.json
  def new
    @project_tag = ProjectTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_tag }
    end
  end

  # GET /project_tags/1/edit
  def edit
    @project_tag = ProjectTag.find(params[:id])
  end

  # POST /project_tags
  # POST /project_tags.json
  def create
    @project_tag = ProjectTag.new(params[:project_tag])

    respond_to do |format|
      if @project_tag.save
        format.html { redirect_to @project_tag, notice: 'Project tag was successfully created.' }
        format.json { render json: @project_tag, status: :created, location: @project_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @project_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_tags/1
  # PUT /project_tags/1.json
  def update
    @project_tag = ProjectTag.find(params[:id])

    respond_to do |format|
      if @project_tag.update_attributes(params[:project_tag])
        format.html { redirect_to @project_tag, notice: 'Project tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_tags/1
  # DELETE /project_tags/1.json
  def destroy
    @project_tag = ProjectTag.find(params[:id])
    @project_tag.destroy

    respond_to do |format|
      format.html { redirect_to project_tags_url }
      format.json { head :no_content }
    end
  end
end
