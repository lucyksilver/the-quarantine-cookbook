class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :method
      t.integer :time
      t.string :level
      t.string :category

      t.timestamps
    end
  end
end
