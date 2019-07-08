class Review < ApplicationRecord
  belongs_to :movie_id, class_name: :Movie, foreign_key: 'movie_id'
  belongs_to :game_id
  belongs_to :music_id
end
