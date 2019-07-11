class Movie < ApplicationRecord
  belongs_to :user, class_name: :Order, foreign_key: "movie_id"

  belongs_to :user, class_name: :Order, foreign_key: 'movie_id'

  has_many :reviews
  # monetize :price_cents
  # monetize :amount_cents

# include PgSearch
#  pg_search_scope :search_by_product_title_and_year,
#          against: [:title, :year],
#          using: {
#           tsearch: { prefix: true }
# }

end
