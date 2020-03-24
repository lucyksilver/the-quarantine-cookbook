class DropUnitsTable < ActiveRecord::Migration[6.0]
      def up
      drop_table :units
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
end
