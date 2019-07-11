class AddOrderToMovies < ActiveRecord::Migration[5.2]
  def change
    add_reference :movies, :order, foreign_key: true
  end
end
