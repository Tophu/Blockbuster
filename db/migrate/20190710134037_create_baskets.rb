class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.integer :order_id
      t.integer :user_id

      t.timestamps
    end
  end
end
