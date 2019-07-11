class Basket < ApplicationRecord
  def sub_total
    sum = 0
    self.items.each do |item|
      sum += item.total_price
    end
    return sum
  end

  belongs_to :user
  has_many :orders
end
