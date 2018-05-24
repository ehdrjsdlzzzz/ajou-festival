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

ActiveRecord::Schema.define(version: 20180523050033) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "pub_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pub_id"], name: "index_comments_on_pub_id"
  end

  create_table "losts", force: :cascade do |t|
    t.string   "item"
    t.text     "place"
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "lost"
  end

  create_table "pubs", force: :cascade do |t|
    t.string   "pub_booth"
    t.string   "major"
    t.string   "pubname"
    t.integer  "date"
    t.text     "pub_detail"
    t.string   "map"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "pubprice"
    t.string   "pubpost"
    t.string   "image_url"
    t.string   "price_url"
    t.string   "location_url"
  end

  create_table "searches", force: :cascade do |t|
    t.text     "content"
    t.integer  "pub_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pub_id"], name: "index_searches_on_pub_id"
  end

end
