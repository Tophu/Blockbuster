class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.decimal :price
      t.string :genre

      t.timestamps
    end
  end
end
