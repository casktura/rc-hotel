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

ActiveRecord::Schema.define(version: 20150419081441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "number"
    t.string   "name"
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "reserf_id"
    t.integer  "room_id"
    t.integer  "optional_bed"
    t.decimal  "optional_bed_cost", precision: 7, scale: 2
    t.decimal  "total_cost",        precision: 7, scale: 2
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "reservations", ["reserf_id"], name: "index_reservations_on_reserf_id", using: :btree
  add_index "reservations", ["room_id"], name: "index_reservations_on_room_id", using: :btree

  create_table "reserve_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "guest_amount"
    t.integer  "night_amount"
    t.integer  "room_amount"
    t.integer  "reserve_status_id"
    t.date     "booking_date"
    t.date     "check_in_date"
    t.time     "check_in_time"
    t.date     "check_out_date"
    t.time     "check_out_time"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "reserves", ["customer_id"], name: "index_reserves_on_customer_id", using: :btree
  add_index "reserves", ["reserve_status_id"], name: "index_reserves_on_reserve_status_id", using: :btree
  add_index "reserves", ["user_id"], name: "index_reserves_on_user_id", using: :btree

  create_table "room_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.string   "name"
    t.decimal  "cost",       precision: 7, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "number"
    t.integer  "room_type_id"
    t.integer  "room_status_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "rooms", ["room_status_id"], name: "index_rooms_on_room_status_id", using: :btree
  add_index "rooms", ["room_type_id"], name: "index_rooms_on_room_type_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password_digest"
    t.string   "privilege"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "reservations", "reserves"
  add_foreign_key "reservations", "rooms"
  add_foreign_key "reserves", "customers"
  add_foreign_key "reserves", "reserve_statuses"
  add_foreign_key "reserves", "users"
  add_foreign_key "rooms", "room_statuses"
  add_foreign_key "rooms", "room_types"
end
