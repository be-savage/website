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

ActiveRecord::Schema.define(version: 20170211232148) do

  create_table "challenges", force: :cascade do |t|
    t.string   "label"
    t.string   "author"
    t.integer  "status",     default: 0
    t.string   "video_link"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.text     "content"
    t.string   "author"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "stand_id"
    t.         "place"
    t.integer  "place_id"
    t.integer  "status",     default: 0
    t.index ["place_id"], name: "index_orders_on_place_id"
    t.index ["stand_id"], name: "index_orders_on_stand_id"
  end

  create_table "places", force: :cascade do |t|
    t.string   "label"
    t.text     "description"
    t.integer  "stand_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["stand_id"], name: "index_places_on_stand_id"
  end

  create_table "stands", force: :cascade do |t|
    t.string   "label"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "label"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "classification"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                     default: "", null: false
    t.string   "encrypted_password",        default: "", null: false
    t.string   "username",                  default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.         "firstname"
    t.         "name"
    t.         "nickname"
    t.integer  "team_id"
    t.string   "role"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "avatar_hover_file_name"
    t.string   "avatar_hover_content_type"
    t.integer  "avatar_hover_file_size"
    t.datetime "avatar_hover_updated_at"
    t.string   "quote"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["team_id"], name: "index_users_on_team_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
