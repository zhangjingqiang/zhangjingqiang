class Skill < ActiveRecord::Base
  validates :name, presence: true
  validates :level, presence: true
  validates :position, presence: true
  
  default_scope { order('position ASC') }
end
