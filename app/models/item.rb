class Item < ApplicationRecord
  belongs_to :movie
  belongs_to :basket
  belongs_to :order

  validates :quantity, presence: true, numericality: true
  validates :movie_id, :basket_id, :order_id, presence: true, numericality: true, uniqueness: true
end
