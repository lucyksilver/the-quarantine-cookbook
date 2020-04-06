class UsersController < ApplicationController
  def show
    @user = current_user
    @user_recipes = @user.user_recipes
  end
end
