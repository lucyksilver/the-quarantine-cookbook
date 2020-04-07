class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @recipes = Recipe.all
    @recipes_search = Recipe.search_by_ingredient(params[:query])
  end
end
