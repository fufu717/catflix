class Cat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one :user
  has_one_attached :image
  belongs_to_active_hash :cat_type

  with_options presence: true do
  validates :name
  validates :cat_type_id
  end
end
