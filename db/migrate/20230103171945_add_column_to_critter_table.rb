class AddColumnToCritterTable < ActiveRecord::Migration[6.1]
  def change
    add_column :critters, :critter_name, :string
  end
end
