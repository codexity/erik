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

ActiveRecord::Schema.define(version: 20151119220425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menus", force: :cascade do |t|
    t.string   "title"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menus", ["site_id"], name: "index_menus_on_site_id", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.text     "context"
    t.json     "data"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pages", ["site_id"], name: "index_pages_on_site_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "products", ["menu_id"], name: "index_products_on_menu_id", using: :btree

  create_table "sites", force: :cascade do |t|
    t.string   "domain"
    t.string   "title"
    t.string   "slogan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "menus", "sites"
  add_foreign_key "pages", "sites"
  add_foreign_key "products", "menus"
end
