class AddColumnPaymentToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :payment, :string
  end
end
