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

ActiveRecord::Schema.define(version: 20141217081822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "yahooid"
    t.integer  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
  end

  add_index "players", ["team_id"], name: "index_team_id", using: :btree

  create_table "playerstats", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "team"
    t.string   "gp"
    t.string   "minutes"
    t.string   "fgm"
    t.string   "fga"
    t.string   "fgpct"
    t.string   "threem"
    t.string   "threea"
    t.string   "threepct"
    t.string   "ftm"
    t.string   "fta"
    t.string   "ftpct"
    t.string   "offreb"
    t.string   "defreb"
    t.string   "reb"
    t.string   "ast"
    t.string   "to"
    t.string   "stl"
    t.string   "blk"
    t.string   "pf"
    t.string   "ppg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: true do |t|
    t.string   "positiontype"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "teams", force: true do |t|
    t.string   "teamname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
