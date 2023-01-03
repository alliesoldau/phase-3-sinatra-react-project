class CreateCritters < ActiveRecord::Migration[6.1]
  def change
    create_table :critters do |t|
      t.string :critter_type
      t.integer :food_id
      t.integer :environment_id
    end
  end
end
