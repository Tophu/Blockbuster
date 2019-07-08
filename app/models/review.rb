class Review < ApplicationRecord
  belongs_to :movie_id
  belongs_to :game_id
  belongs_to :music_id
end
