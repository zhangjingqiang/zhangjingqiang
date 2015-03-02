class Admin::ResumesController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin/application'
  before_action :set_resume, only: [:show, :edit, :update, :destroy]
  
  def index
    @resumes = Resume.all
  end

  def show
  end

  def new
    @resume = Resume.new
  end

  def edit
  end

  def create
    @resume = Resume.new(resume_params)

    respond_to do |format|
      if @resume.save
        format.html { redirect_to admin_resumes_url, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @resume }
      else
        format.html { render action: 'new' }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end 
    end 
  end 

  def update
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to admin_resumes_url, notice: 'Successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end 
    end 
  end

  def destroy
    @resume.destroy
    respond_to do |format|
      format.html { redirect_to admin_resumes_url, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_resume
      @resume ||= Resume.find(params[:id])
    end

    def resume_params
      params.require(:resume).permit(:year, :title, :period, :body)
    end
end
