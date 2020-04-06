class Recipe < ApplicationRecord
  include PgSearch::Model
  has_many :user_recipes
  has_many :ingredients
  has_many :steps
  belongs_to :user
  has_one_attached :photo


  pg_search_scope :search_by_ingredient, associated_against: {
    ingredients: :name
  }


  accepts_nested_attributes_for :steps, :ingredients

end
