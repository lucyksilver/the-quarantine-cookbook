class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @comfort_sample = Recipe.where(category: "Home Comforts").sample(3)
    @date_sample = Recipe.where(category: "Date Night").sample(3)
    @immune_sample = Recipe.where(category: "Immune System Boost").sample(3)
    @bake_sample = Recipe.where(category: "Procrastinate With Baking").sample(3)

    @remainder_comfort = Recipe.where(category: "Home Comforts").last(Recipe.where(category: "Home Comforts").count - 3)
    @remainder_date = Recipe.where(category: "Date Night").last(Recipe.where(category: "Date Night").count - 3)
    @remainder_immune = Recipe.where(category: "Immune System Boost").last(Recipe.where(category: "Immune System Boost").count - 3)
    @remainder_bake = Recipe.where(category: "Procrastinate With Baking").last(Recipe.where(category: "Procrastinate With Baking").count - 3)
  end
end
