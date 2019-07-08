class Order < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  has_many :movies, class_name: "movies", foreign_key: "movies_id"
end
