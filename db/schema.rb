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

ActiveRecord::Schema[7.0].define(version: 2023_07_17_205633) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "league_sessions", force: :cascade do |t|
    t.date "date"
    t.integer "gameone"
    t.integer "gametwo"
    t.integer "gamethree"
    t.integer "series"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "season_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.integer "number_sessions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
