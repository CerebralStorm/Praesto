# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20121110023556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.float    "duration",   default: 0.0
    t.float    "distance",   default: 0.0
    t.float    "met",        default: 0.0
    t.integer  "reps",       default: 0
    t.string   "category"
    t.integer  "workout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "league_enrollments", force: true do |t|
    t.integer  "league_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "league_enrollments", ["league_id"], name: "index_league_enrollments_on_league_id", using: :btree
  add_index "league_enrollments", ["user_id"], name: "index_league_enrollments_on_user_id", using: :btree

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.float    "total_score"
    t.integer  "rank"
    t.integer  "max_number_of_players"
    t.integer  "user_id"
    t.integer  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.float    "total_score"
    t.integer  "rank"
    t.integer  "max_number_of_players"
    t.integer  "user_id"
    t.integer  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.float    "score",            default: 0.0
    t.integer  "age"
    t.float    "height"
    t.float    "weight"
    t.float    "bmr"
    t.string   "sex"
    t.boolean  "admin",            default: false
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.float    "total_score"
    t.integer  "team_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workouts", force: true do |t|
    t.string   "workout_date"
    t.string   "location"
    t.integer  "calories"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workouts", ["user_id", "created_at"], name: "index_workouts_on_user_id_and_created_at", using: :btree

end
