class Movie < ApplicationRecord
  validates :description, presence: true
  validates :title, :price, :genre, presence: true
  validates :price, numericality: true
  validates :title, uniqueness: true
end
