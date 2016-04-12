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

ActiveRecord::Schema.define(version: 20160412165107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "build_parts", force: true do |t|
    t.integer  "build_id"
    t.integer  "part_id"
    t.integer  "units_per"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "build_parts", ["build_id"], name: "index_build_parts_on_build_id", using: :btree
  add_index "build_parts", ["part_id"], name: "index_build_parts_on_part_id", using: :btree

  create_table "builds", force: true do |t|
    t.date     "bom_date"
    t.date     "prod_start_date"
    t.date     "corrugate_due_date"
    t.date     "production_end_date"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
    t.boolean  "custom"
    t.text     "desc"
    t.string   "cuid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
