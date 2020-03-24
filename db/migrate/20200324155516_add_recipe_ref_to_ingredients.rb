class AddRecipeRefToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :recipe, null: false, foreign_key: true
  end
end
