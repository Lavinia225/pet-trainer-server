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

ActiveRecord::Schema.define(version: 2023_05_08_213557) do

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "breed"
    t.integer "age"
    t.string "gender"
    t.string "personality"
    t.integer "trainer_id"
    t.string "working_on"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.integer "payrate"
    t.string "personality"
  end

end
