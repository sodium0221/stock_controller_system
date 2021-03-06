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

ActiveRecord::Schema.define(version: 20210911065158) do

  create_table "goods", force: :cascade do |t|
    t.string "lot"
    t.date "expire"
    t.integer "amount"
    t.string "article"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "goods_name"
    t.integer "quantity"
    t.string "client_name"
    t.index ["user_id"], name: "index_goods_on_user_id"
  end

  create_table "goods_details", force: :cascade do |t|
    t.string "lot"
    t.date "expire"
    t.integer "amount"
    t.string "product_amount"
    t.string "ship_amount"
    t.string "stock_amount"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "ship_day"
    t.date "product_day"
  end

  create_table "items", force: :cascade do |t|
    t.date "worked_on"
    t.string "note"
    t.string "stock"
    t.string "lot"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "expire"
    t.integer "unit_price"
    t.string "material_name"
    t.integer "demand_unit"
    t.integer "producing_unit"
    t.integer "yield"
    t.integer "orders_num"
    t.boolean "allergy"
    t.string "contact_order"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "lot"
    t.string "stock_amount"
    t.integer "demand_unit"
    t.integer "producing_unit"
    t.integer "yield"
    t.integer "orders_num"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "rog_day"
    t.integer "rog_amount"
    t.date "expire"
    t.index ["item_id"], name: "index_products_on_item_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "affiliation"
    t.integer "employee_num"
    t.boolean "superior"
    t.date "worked_day"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
