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

ActiveRecord::Schema.define(version: 20150507011530) do

  create_table "labels", force: :cascade do |t|
    t.integer  "shirt_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "labels", ["shirt_id"], name: "index_labels_on_shirt_id"
  add_index "labels", ["tag_id"], name: "index_labels_on_tag_id"

  create_table "notes", force: :cascade do |t|
    t.string   "content"
    t.integer  "shirt_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "notes", ["shirt_id"], name: "index_notes_on_shirt_id"
  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "ownerships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "shirt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ownerships", ["shirt_id"], name: "index_ownerships_on_shirt_id"
  add_index "ownerships", ["user_id"], name: "index_ownerships_on_user_id"

  create_table "shirts", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "artist"
    t.string   "image_url"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
