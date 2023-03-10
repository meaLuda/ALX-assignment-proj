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

ActiveRecord::Schema[7.0].define(version: 2023_02_24_035157) do
  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "team_stats_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_stats_id"], name: "index_comments_on_team_stats_id"
  end

  create_table "team_stats", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.integer "games_played"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "team_stats", column: "team_stats_id"
end
