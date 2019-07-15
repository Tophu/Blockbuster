class Basket < ApplicationRecord
  # belongs_to :user
  # has_many :orders
  has_many :items, dependent: :destroy
  has_many :movies34, through: :items
  belongs_to :user

  def sub_total
    sum = 0
    self.items.each do |item|
      sum += item.total_price
    end
    return sum
  end
end
