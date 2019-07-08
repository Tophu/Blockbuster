class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.references :movie_id, foreign_key: true
      # t.references :game_id, foreign_key: true
      # t.references :music_id, foreign_key: true

      t.timestamps
    end
  end
end
