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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_03_09_204121) do
=======
ActiveRecord::Schema.define(version: 2020_03_10_135437) do
>>>>>>> 5aaa741fb41e89a2e0c7d56745a134a292cb5c00

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.float "longitude"
    t.float "latitude"
    t.string "name"
    t.text "description"
    t.string "price_category"
    t.bigint "location_id"
    t.string "time_of_day"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "interest"
    t.string "address"
    t.index ["location_id"], name: "index_activities_on_location_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pairs", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_pairs_on_activity_id"
    t.index ["category_id"], name: "index_pairs_on_category_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "activity_id"
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_reviews_on_activity_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "selections", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "activity_id"
    t.string "time_of_day"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "itinerary_id"
<<<<<<< HEAD
=======
    t.integer "day_date"
>>>>>>> 5aaa741fb41e89a2e0c7d56745a134a292cb5c00
    t.index ["activity_id"], name: "index_selections_on_activity_id"
    t.index ["itinerary_id"], name: "index_selections_on_itinerary_id"
    t.index ["user_id"], name: "index_selections_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "interests", array: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "locations"
  add_foreign_key "pairs", "activities"
  add_foreign_key "pairs", "categories"
  add_foreign_key "reviews", "activities"
  add_foreign_key "reviews", "users"
  add_foreign_key "selections", "activities"
  add_foreign_key "selections", "itineraries"
  add_foreign_key "selections", "users"
end
