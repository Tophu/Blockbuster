class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :rent_date_start
      t.string :rent_date_end
      t.string :payment

      # t.string :name
      # t.string :email

      t.timestamps
    end
  end
end
