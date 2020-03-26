class RemoveMethodFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :method
  end
end
