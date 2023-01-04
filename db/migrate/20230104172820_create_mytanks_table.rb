class CreateMytanksTable < ActiveRecord::Migration[6.1]
  def change
    create_table :mytanks do |t|
      t.integer :critter_id
      t.integer :food_id
      t.integer :environment_id
    end
  end
end

