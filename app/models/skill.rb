class Skill < ActiveRecord::Base
  validates :name, presence: true
  validates :level, presence: true
end
