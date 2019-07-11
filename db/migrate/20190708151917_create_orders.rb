class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :content_id
      t.string :rent_date_start
      t.string :rent_date_end
      t.string :payment

      t.timestamps
    end
  end
end
