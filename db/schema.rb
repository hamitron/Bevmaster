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

ActiveRecord::Schema.define(version: 20140917015424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "beverages", force: true do |t|
    t.string   "name"
    t.integer  "edition"
    t.string   "svg_element"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "beverage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "colors", ["beverage_id"], name: "index_colors_on_beverage_id", using: :btree

  create_table "designs", force: true do |t|
    t.string   "name"
    t.string   "format"
    t.integer  "user_id"
    t.integer  "beverage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "designs", ["beverage_id"], name: "index_designs_on_beverage_id", using: :btree
  add_index "designs", ["user_id"], name: "index_designs_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "design_id"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["design_id"], name: "index_votes_on_design_id", using: :btree
  add_index "votes", ["state"], name: "index_votes_on_state", using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree

end
