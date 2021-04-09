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

ActiveRecord::Schema.define(version: 2021_04_09_180716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emergency_contacts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_emergency_contacts_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.string "start_end"
    t.string "street"
    t.string "city"
    t.string "county"
    t.string "state"
    t.string "zip_code"
    t.float "lat"
    t.float "long"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_locations_on_trip_id"
  end

  create_table "maintenance_reports", force: :cascade do |t|
    t.bigint "vehicle_id", null: false
    t.string "description"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vehicle_id"], name: "index_maintenance_reports_on_vehicle_id"
  end

  create_table "segments", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.integer "index_num"
    t.string "instructions"
    t.string "icon_url"
    t.float "distance"
    t.integer "time"
    t.string "direction"
    t.integer "turn_type"
    t.string "map_url"
    t.float "start_lat"
    t.float "start_long"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_segments_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "time"
    t.integer "real_time"
    t.float "distance"
    t.boolean "has_tolls"
    t.float "fuel_usage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "trip_status", default: "Saved"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "make"
    t.string "model"
    t.integer "year"
    t.integer "mileage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  add_foreign_key "emergency_contacts", "users"
  add_foreign_key "locations", "trips"
  add_foreign_key "maintenance_reports", "vehicles"
  add_foreign_key "segments", "trips"
  add_foreign_key "trips", "users"
  add_foreign_key "vehicles", "users"
end
