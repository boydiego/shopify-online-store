class Product < ApplicationRecord
  has_one_attached :image
  validates :title, :description, :image, :price, presence: true
end
