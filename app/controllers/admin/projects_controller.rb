class Admin::ProjectsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin/application'
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to admin_projects_url, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end 
    end 
  end 

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to admin_projects_url, notice: 'Successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end 
    end 
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to admin_projects_url, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_project
      @project ||= Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:body, :name, :description, :url, :picture, :name1, :description1, :url1, :picture1)
    end
end
