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

ActiveRecord::Schema.define(version: 20161017215256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autos", force: :cascade do |t|
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "trim"
    t.string   "engine"
    t.integer  "mileage"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_autos_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",           null: false
    t.integer  "parent_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.integer  "children_count"
    t.string   "desc"
    t.string   "info_link"
    t.string   "icon_link"
    t.string   "label"
  end

  create_table "service_calendars", force: :cascade do |t|
    t.integer  "service_appointment", null: false
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["user_id"], name: "index_service_calendars_on_user_id", using: :btree
  end

  create_table "service_centers", force: :cascade do |t|
    t.string   "service_name"
    t.string   "service_address"
    t.string   "service_city"
    t.string   "service_state"
    t.string   "service_zip"
    t.string   "service_phone"
    t.string   "service_email"
    t.string   "service_bio"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "service_address_second"
  end

  create_table "service_quotes", force: :cascade do |t|
    t.string   "service_request_id"
    t.string   "auto_id"
    t.integer  "service_center_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "quote_text"
    t.decimal  "quote_cost"
    t.integer  "user_id"
    t.index ["service_center_id"], name: "index_service_quotes_on_service_center_id", using: :btree
  end

  create_table "service_requests", force: :cascade do |t|
    t.string   "auto_id"
    t.string   "work_request"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_service_requests_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "user_email"
    t.string   "user_zip"
    t.string   "user_phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "auto_id"
    t.string   "password_digest"
  end

  add_foreign_key "autos", "users"
  add_foreign_key "service_calendars", "users"
  add_foreign_key "service_quotes", "service_centers"
  add_foreign_key "service_requests", "users"
end
