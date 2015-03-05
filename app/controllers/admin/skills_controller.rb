class Admin::SkillsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin/application'
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  
  def index
    @skills = Skill.all
  end

  def show
  end

  def new
    @skill = Skill.new
  end

  def edit
  end

  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to admin_skills_url, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @skill }
      else
        format.html { render action: 'new' }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end 
    end 
  end 

  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to admin_skills_url, notice: 'Successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end 
    end 
  end

  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to admin_skills_url, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_skill
      @skill ||= Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:name, :level, :position)
    end
end
