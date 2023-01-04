class DropWrongColumnsFromMytanksTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :mytanks, :critter_id
    remove_column :mytanks, :food_id
    add_column :mytanks, :tank_name, :string
  end
end
