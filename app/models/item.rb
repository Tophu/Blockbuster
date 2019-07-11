class Item < ApplicationRecord
  validates :quantity, presence: true, numericality: true
  validates :movie_id, :basket_id, :order_id, presence: true, numericality: true, uniqueness: true
end
