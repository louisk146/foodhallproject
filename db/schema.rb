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

ActiveRecord::Schema.define(version: 20160214041804) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.string   "contact"
    t.text     "body"
    t.integer  "foodfreecycle_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "event_id"
  end

  add_index "comments", ["event_id"], name: "index_comments_on_event_id"
  add_index "comments", ["foodfreecycle_id"], name: "index_comments_on_foodfreecycle_id"

  create_table "eventcomments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.string   "contact"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "eventcomments", ["event_id"], name: "index_eventcomments_on_event_id"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "location"
    t.text     "description"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.date     "date"
    t.time     "starttime"
    t.time     "endtime"
    t.string   "time"
  end

  create_table "foodfreecyclecomments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.string   "contact"
    t.integer  "foodfreecycle_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "foodfreecyclecomments", ["foodfreecycle_id"], name: "index_foodfreecyclecomments_on_foodfreecycle_id"

  create_table "foodfreecycles", force: :cascade do |t|
    t.string   "food"
    t.string   "location"
    t.text     "description"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "status"
  end

end
