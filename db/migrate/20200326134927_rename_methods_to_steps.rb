class RenameMethodsToSteps < ActiveRecord::Migration[6.0]
  def change
    rename_table :methods, :steps
  end
end
