class Movie < ApplicationRecord
  belongs_to :user 
  has_one_attached :movie
  has_many :comments
end
