class Recipe < ApplicationRecord
  has_many :user_recipes
  belongs_to :user

  CATEGORY = ["Home Comforts", "Date Night", "Boost the immune system", "Procrastinate with baking"]
end
