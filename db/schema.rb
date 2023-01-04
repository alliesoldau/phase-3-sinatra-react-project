# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_01_04_173940) do

  create_table "critters", force: :cascade do |t|
    t.string "critter_type"
    t.integer "food_id"
    t.integer "environment_id"
    t.string "critter_name"
    t.integer "mytank_id"
  end

  create_table "environments", force: :cascade do |t|
    t.string "environment_name"
    t.string "water_type"
    t.integer "water_temperature"
  end

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.string "food_type"
  end

  create_table "mytanks", force: :cascade do |t|
    t.integer "environment_id"
    t.string "tank_name"
  end

end
