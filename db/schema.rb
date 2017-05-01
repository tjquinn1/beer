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

ActiveRecord::Schema.define(version: 20170430211954) do

  create_table "beer_mains", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grains", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "origin"
    t.string   "manufName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reci_grains", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "recipe_id"
    t.integer  "grain_id"
    t.float    "amountGrain", limit: 24
    t.decimal  "costGrain",              precision: 15, scale: 2
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.index ["grain_id"], name: "index_reci_grains_on_grain_id", using: :btree
    t.index ["recipe_id"], name: "index_reci_grains_on_recipe_id", using: :btree
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.date     "dateBrewed"
    t.float    "oG",           limit: 24
    t.float    "fG",           limit: 24
    t.float    "oGTemp",       limit: 24
    t.float    "fGTemp",       limit: 24
    t.float    "sugarBottle",  limit: 24
    t.float    "targOG",       limit: 24
    t.float    "targFG",       limit: 24
    t.float    "estCarb",      limit: 24
    t.date     "dateBottled"
    t.time     "targFermTime"
    t.time     "sparTime"
    t.time     "boilTime"
    t.time     "mashTime"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "beer_main_id"
    t.index ["beer_main_id"], name: "index_recipes_on_beer_main_id", using: :btree
  end

  add_foreign_key "reci_grains", "grains"
  add_foreign_key "reci_grains", "recipes"
  add_foreign_key "recipes", "beer_mains"
end
