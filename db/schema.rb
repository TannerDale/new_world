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

ActiveRecord::Schema.define(version: 2021_07_28_041806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attrs", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

  create_table "usersweapons", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "weapon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_usersweapons_on_user_id"
    t.index ["weapon_id"], name: "index_usersweapons_on_weapon_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "damage"
    t.string "rarity"
    t.string "perk"
    t.bigint "weapontype_id"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_weapons_on_user_id"
    t.index ["weapontype_id"], name: "index_weapons_on_weapontype_id"
  end

  create_table "weaponstyles", force: :cascade do |t|
    t.string "name"
  end

  create_table "weapontypes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "weaponstyle_id"
    t.index ["weaponstyle_id"], name: "index_weapontypes_on_weaponstyle_id"
  end

  add_foreign_key "usersweapons", "users"
  add_foreign_key "usersweapons", "weapons"
  add_foreign_key "weapons", "users"
  add_foreign_key "weapons", "weapontypes"
  add_foreign_key "weapontypes", "weaponstyles"
end
