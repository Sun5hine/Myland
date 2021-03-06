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

ActiveRecord::Schema.define(version: 2018_12_06_162251) do

  create_table "islands", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "location"
    t.text "description"
    t.integer "price"
    t.string "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_url"
    t.string "thumbnail_img"
  end

  create_table "rents", force: :cascade do |t|
    t.integer "user_id"
    t.integer "island_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "month"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "title"
    t.text "content"
    t.integer "user_id"
    t.integer "island_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin"
  end

end
