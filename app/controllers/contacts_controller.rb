class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      NoticeMailer.notice_email(@contact).deliver
      redirect_to root_url, notice: 'Successfully created.'
    else
      render controller: 'welcome', action: 'index'
    end 
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end
end
