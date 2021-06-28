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

ActiveRecord::Schema.define(version: 2021_06_28_232552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boat_service_trips", force: :cascade do |t|
    t.bigint "boat_service_id"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_service_id"], name: "index_boat_service_trips_on_boat_service_id"
    t.index ["trip_id"], name: "index_boat_service_trips_on_trip_id"
  end

  create_table "boat_services", force: :cascade do |t|
    t.float "price"
    t.bigint "boat_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id"], name: "index_boat_services_on_boat_id"
    t.index ["service_id"], name: "index_boat_services_on_service_id"
  end

  create_table "boats", force: :cascade do |t|
    t.string "name"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_boats_on_owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "boat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id"], name: "index_trips_on_boat_id"
  end

  add_foreign_key "boat_service_trips", "boat_services"
  add_foreign_key "boat_service_trips", "trips"
  add_foreign_key "boat_services", "boats"
  add_foreign_key "boat_services", "services"
  add_foreign_key "boats", "owners"
  add_foreign_key "trips", "boats"
end
