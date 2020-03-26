class RenameDescriptionToMethod < ActiveRecord::Migration[6.0]
  def change
    rename_table :descriptions, :method
  end
end
