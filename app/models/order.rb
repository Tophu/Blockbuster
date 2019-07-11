class Order < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to :basket
  has_many :movies, class_name: "movies", foreign_key: "movies_id"

  validates :rent_start_date, presence: true
  validates :rent_end_date, presence: true
end
