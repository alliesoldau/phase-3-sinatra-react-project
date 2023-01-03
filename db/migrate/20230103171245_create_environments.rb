class CreateEnvironments < ActiveRecord::Migration[6.1]
  def change
    create_table :environments do |t|
      t.string :environment_name
      t.string :water_type
      t.integer :water_temperature
    end
  end
end
