class CreateDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :descriptions do |t|
      t.text :steps
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
