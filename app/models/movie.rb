class Movie < ApplicationRecord
  belongs_to :user 
  has_one_attached :movie
  has_many :comments
  belongs_to :cat

  with_options presence: true do
    validates :title
    validates :cat_id
    validates :text
    validates :movie
  end
  
end
