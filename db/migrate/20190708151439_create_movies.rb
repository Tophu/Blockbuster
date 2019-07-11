class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :year
      t.references :review
      t.integer :price
      t.string :genre

      t.timestamps
    end
  end
end
