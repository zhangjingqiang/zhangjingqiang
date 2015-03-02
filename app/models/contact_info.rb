class ContactInfo < ActiveRecord::Base
  validates :body1, presence: true
  validates :body2, presence: true
  validates :body3, presence: true
end
