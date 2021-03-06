class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :subject, presence: false
  validates :message, presence: true
  
  default_scope { order('id DESC') }
end
