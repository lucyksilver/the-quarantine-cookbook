class UserRecipesController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @user = current_user
    @user_recipe = UserRecipe.new
    @user_recipe.recipe = @recipe
    @user_recipe.user = @user
    if @user_recipe.save
      redirect_to user_path(@user)
    else
      render "recipes/show"
    end
  end

end
