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

ActiveRecord::Schema.define(version: 20170809115440) do

  create_table "areas", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name",              limit: 255, null: false
    t.integer  "category_large_id", limit: 4,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.integer  "item_id",            limit: 4,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",               limit: 255,   null: false
    t.text     "description",        limit: 65535, null: false
    t.integer  "category_large_id",  limit: 4,     null: false
    t.integer  "category_middle_id", limit: 4
    t.integer  "category_small_id",  limit: 4
    t.string   "size",               limit: 255,   null: false
    t.integer  "brand_id",           limit: 4
    t.string   "condition",          limit: 255,   null: false
    t.string   "delivery_charge",    limit: 255,   null: false
    t.string   "how_to_delivery",    limit: 255,   null: false
    t.integer  "area_id",            limit: 4,     null: false
    t.string   "shipping_dates",     limit: 255,   null: false
    t.integer  "price",              limit: 4,     null: false
    t.integer  "user_id",            limit: 4,     null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nickname",               limit: 255,              null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "last_name",              limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_kananame",          limit: 255
    t.string   "first_kananame",         limit: 255
    t.integer  "post_number",            limit: 4
    t.string   "city",                   limit: 255
    t.string   "address",                limit: 255
    t.string   "building",               limit: 255
    t.integer  "phone_number",           limit: 4
    t.integer  "card_number",            limit: 4
    t.integer  "expiration_month",       limit: 4
    t.integer  "expiration_year",        limit: 4
    t.integer  "security_code",          limit: 4
    t.string   "user_photo",             limit: 255
    t.integer  "total_money",            limit: 4
    t.integer  "review_id",              limit: 4
    t.integer  "area_id",                limit: 4
    t.string   "encrypted_password",     limit: 255, default: ""
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["nickname"], name: "index_users_on_nickname", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
