class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :quantity
      t.integer :movie_id
      t.integer :basket_id
      t.integer :order_id

      t.timestamps
    end
  end
end
