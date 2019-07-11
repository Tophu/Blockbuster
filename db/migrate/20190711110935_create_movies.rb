class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.integer :review_id
      t.decimal :price
      t.string :genre

      t.timestamps
    end
  end
end
