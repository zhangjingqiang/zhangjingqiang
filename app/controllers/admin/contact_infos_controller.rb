class Admin::ContactInfosController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin/application'
  before_action :set_contact_info, only: [:show, :edit, :update, :destroy]
  
  def index
    @contact_infos = ContactInfo.all
  end

  def show
  end

  def new
    @contact_info = ContactInfo.new
  end

  def edit
  end

  def create
    @contact_info = ContactInfo.new(contact_info_params)

    respond_to do |format|
      if @contact_info.save
        format.html { redirect_to admin_contact_infos_url, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact_info.errors, status: :unprocessable_entity }
      end 
    end 
  end 

  def update
    respond_to do |format|
      if @contact_info.update(contact_info_params)
        format.html { redirect_to admin_contact_infos_url, notice: 'Successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contact_info.errors, status: :unprocessable_entity }
      end 
    end 
  end

  def destroy
    @contact_info.destroy
    respond_to do |format|
      format.html { redirect_to admin_contact_infos_url, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_contact_info
      @contact_info ||= ContactInfo.find(params[:id])
    end

    def contact_info_params
      params.require(:contact_info).permit(:body1, :body2, :body3)
    end
end
