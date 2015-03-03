class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      NoticeMailer.notice_email(@contact).deliver
      if request.xhr?
        render :json => {
          :message => 'Successfully created.'
        }
      end
    else
      render controller: 'welcome', action: 'index'
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end
end
