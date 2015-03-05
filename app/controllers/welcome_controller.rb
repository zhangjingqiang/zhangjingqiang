class WelcomeController < ApplicationController
  def index
    @hero = Hero.first
    @about = About.first
    @skills = Skill.all
    @resumes = Resume.select(:year).distinct
    @project = Project.first
    @contact_info = ContactInfo.first
    
    @contact = Contact.new
  end
end
