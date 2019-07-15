class AddColumnToBaskets < ActiveRecord::Migration[6.0]
  def change
    add_column :baskets, :item_id, :integer
    add_column :baskets, :movie_id, :integer
  end
end
