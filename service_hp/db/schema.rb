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

ActiveRecord::Schema.define(version: 20170515090350) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "tlp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "staff_id"
    t.integer  "payment_id"
  end

  create_table "itemrepairs", force: :cascade do |t|
    t.string   "brand"
    t.string   "type_hp"
    t.string   "imei"
    t.string   "damage"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "customer_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "item_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "repair_id"
  end

  create_table "items_repairs", force: :cascade do |t|
    t.integer "repair_id"
    t.integer "item_id"
    t.index ["item_id"], name: "index_items_repairs_on_item_id"
    t.index ["repair_id"], name: "index_items_repairs_on_repair_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "staff_id"
    t.integer  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "repair_id"
  end

  create_table "repairs", force: :cascade do |t|
    t.integer  "staff_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "status",        default: 0
    t.integer  "itemrepair_id"
    t.integer  "payment_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
