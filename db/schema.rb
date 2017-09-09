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

ActiveRecord::Schema.define(version: 20170909094458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "homestays", force: :cascade do |t|
    t.string   "cover_image"
    t.string   "title"
    t.integer  "user_id"
    t.string   "room_type"
    t.integer  "guest_no"
    t.boolean  "bed_room"
    t.text     "description"
    t.text     "amenities"
    t.integer  "price"
    t.integer  "weekly_discount"
    t.integer  "monthly_discount"
    t.string   "house_rules"
    t.string   "location"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_homestays_on_user_id", using: :btree
  end

  create_table "lodgings", force: :cascade do |t|
    t.text     "description"
    t.integer  "price"
    t.string   "cover_image"
    t.string   "kind_type"
    t.integer  "kind_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["kind_type", "kind_id"], name: "index_lodgings_on_kind_type_and_kind_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "lodging_type"
    t.integer  "lodging_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["lodging_type", "lodging_id"], name: "index_photos_on_lodging_type_and_lodging_id", using: :btree
  end

  create_table "user_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "lodging_type"
    t.integer  "lodging_id"
    t.text     "comment"
    t.integer  "rating"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["lodging_type", "lodging_id"], name: "index_user_reviews_on_lodging_type_and_lodging_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender",        limit: 1
    t.string   "profile_image"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "homestays", "users"
end
