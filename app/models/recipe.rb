class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :user_recipes
  belongs_to :user
  has_one_attached :photo
end
