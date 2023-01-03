class CreateFood < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.string :food_type
    end
  end
end
