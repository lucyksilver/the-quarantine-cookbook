class Recipe < ApplicationRecord
  has_many :user_recipes
  has_many :ingredients
  belongs_to :user
  has_one_attached :photo
end
