class Project < ActiveRecord::Base
  validates :body, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :picture, presence: true
  validates :name1, presence: true
  validates :description1, presence: true
  validates :url1, presence: true
  validates :picture1, presence: true
end
