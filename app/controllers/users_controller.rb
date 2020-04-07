class UsersController < ApplicationController
  def show
    @user = current_user

    @first_user_recipes = @user.user_recipes.first(3)
    if @user.user_recipes.count > 3
      @remainder_recipes = @user.user_recipes.last(@user.user_recipes.count - 3)
    end

    @first_uploaded = @user.recipes.first(3)
    if @user.recipes.count > 3
      @remainder_uploaded = @user.recipes.last(@user.recipes.count - 3)
    end
  end
end
