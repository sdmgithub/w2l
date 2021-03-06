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

ActiveRecord::Schema.define(version: 20130908232449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_ins", force: true do |t|
    t.integer  "locality_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "check_ins", ["locality_id", "user_id"], name: "user_locality_tag_index", unique: true, using: :btree
  add_index "check_ins", ["locality_id"], name: "index_check_ins_on_locality_id", using: :btree
  add_index "check_ins", ["user_id"], name: "index_check_ins_on_user_id", using: :btree

  create_table "dislikes", force: true do |t|
    t.integer  "tag_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dislikes", ["tag_id", "user_id"], name: "user_dislike_tag_index", unique: true, using: :btree
  add_index "dislikes", ["tag_id"], name: "index_dislikes_on_tag_id", using: :btree
  add_index "dislikes", ["user_id"], name: "index_dislikes_on_user_id", using: :btree

  create_table "hantagaces", force: true do |t|
    t.integer  "locality_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hantagaces", ["locality_id", "tag_id"], name: "hang_tag_on_locality_index", unique: true, using: :btree
  add_index "hantagaces", ["locality_id"], name: "index_hantagaces_on_locality_id", using: :btree
  add_index "hantagaces", ["tag_id"], name: "index_hantagaces_on_tag_id", using: :btree

  create_table "likes", force: true do |t|
    t.integer  "tag_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["tag_id", "user_id"], name: "user_like_tag_index", unique: true, using: :btree
  add_index "likes", ["tag_id"], name: "index_likes_on_tag_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "localities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "image"
    t.string   "urls"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
