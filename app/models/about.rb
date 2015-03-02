class About < ActiveRecord::Base
  validates :body, presence: true
  validates :music, presence: true
  validates :movies, presence: true
  validates :traveling, presence: true
  validates :books, presence: true
end
