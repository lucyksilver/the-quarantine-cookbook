class Recipe < ApplicationRecord
  has_many :user_recipes
  has_many :ingredients
  has_many :steps
  belongs_to :user
  has_one_attached :photo
  accepts_nested_attributes_for :steps, :ingredients
end
