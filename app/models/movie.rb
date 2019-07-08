class Movie < ApplicationRecord
  belongs_to :user, class_name: :Order, foreign_key: 'movie_id'
  monetize :price_cents

include PgSearch
 pg_search_scope :search_by_product_name_and_year,
         against: [:title, :year],
         using: {
          tsearch: { prefix: true }
         }
end
