class RenameMethodToMethods < ActiveRecord::Migration[6.0]
  def change
    rename_table :method, :methods
  end
end
