class Resume < ActiveRecord::Base
  validates :year, presence: true
  validates :title, presence: true
  validates :period, presence: true
  validates :body, presence: true
  
  default_scope { order('year DESC') }
end
