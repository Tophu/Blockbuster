class Movie < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :description, presence: true
  validates :title, :price, :genre, presence: true
  validates :price, numericality: true
  validates :title, uniqueness: true
end
