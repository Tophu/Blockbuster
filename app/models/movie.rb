class Movie < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user, class_name: :Order, foreign_key: "movie_id"
=======
  belongs_to :user, class_name: :Order, foreign_key: 'movie_id'
>>>>>>> 4cde0be1848774abf7b6548e12dddd8f702c7ca5
  has_many :reviews
  # monetize :price_cents
  # monetize :amount_cents
  include PgSearch
   pg_search_scope :search_by_product_title_and_year,
                            against: [:title, :year],
                            using: {
                               tsearch: { prefix: true },
                   }
end
