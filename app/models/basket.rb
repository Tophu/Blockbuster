class Basket < ApplicationRecord
  # has_many :orders
  has_many :items, dependent: :destroy
  has_many :movies, through: :items
  belongs_to :user

  validates :movie_id, :basket_id, :order_id, presence: true, numericality: true, uniqueness: true

  def sub_total
    sum = 0
    self.items.each do |item|
      sum += item.total_price
    end
    return sum
  end
end
