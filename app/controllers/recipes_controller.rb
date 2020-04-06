class RecipesController < ApplicationController
  def index


      # need if so that it searches through all recipes' ingredients, not in category
      @recipes = Recipe.search_by_ingredient(params[:query])


      @comfort_sample = Recipe.where(category: "Home Comforts").sample(3)
      @date_sample = Recipe.where(category: "Date Night").sample(3)
      @immune_sample = Recipe.where(category: "Immune System Boost").sample(3)
      @bake_sample = Recipe.where(category: "Procrastinate With Baking").sample(3)

      @remainder_comfort = Recipe.where(category: "Home Comforts").last(Recipe.where(category: "Home Comforts").count - 3)
      @remainder_date = Recipe.where(category: "Date Night").last(Recipe.where(category: "Date Night").count - 3)
      @remainder_immune = Recipe.where(category: "Immune System Boost").last(Recipe.where(category: "Immune System Boost").count - 3)
      @remainder_bake = Recipe.where(category: "Procrastinate With Baking").last(Recipe.where(category: "Procrastinate With Baking").count - 3)
    end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.steps.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
  end


  private

  def recipe_params
    params.require(:recipe).permit(:user_id, :name, :description, :time,
      :level, :category, ingredients_attributes: [:id, :name, :quantity], steps_attributes: [:id, :instruction])
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
