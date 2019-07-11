class AddBasketToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :basket, foreign_key: true
  end
end
