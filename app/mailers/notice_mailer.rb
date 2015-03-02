class NoticeMailer < ApplicationMailer
  default from: ENV['EMAIL']
 
  def notice_email(contact)
    @contact = contact
    mail(to: ENV['EMAIL'], subject: '[zhangjingqiang] New contact is coming!!!')
  end
end
