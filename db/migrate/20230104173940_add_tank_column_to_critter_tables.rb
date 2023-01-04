class AddTankColumnToCritterTables < ActiveRecord::Migration[6.1]
  def change
    add_column :critters, :mytank_id, :integer
  end
end
