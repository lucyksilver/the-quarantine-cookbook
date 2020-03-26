class ChangeSteps < ActiveRecord::Migration[6.0]
  def change
    rename_column :steps, :steps, :instruction
  end
end
