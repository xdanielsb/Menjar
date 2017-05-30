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

ActiveRecord::Schema.define(version: 20170530123036) do

  create_table "charities", force: :cascade do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "phone"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "consumers", force: :cascade do |t|
    t.string   "cedula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.text     "description"
    t.string   "state"
    t.datetime "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "amount"
    t.string   "name"
    t.integer  "product_id_id"
    t.integer  "provider_id_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["product_id_id"], name: "index_offers_on_product_id_id"
    t.index ["provider_id_id"], name: "index_offers_on_provider_id_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "cedula"
    t.string   "name"
    t.datetime "born_date"
    t.string   "nationality"
    t.integer  "provider_id_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["provider_id_id"], name: "index_people_on_provider_id_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "expiration"
    t.integer  "price"
    t.float    "latitude"
    t.float    "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "born_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "amount"
    t.text     "description"
    t.datetime "limit_date"
    t.string   "date_reservation"
    t.string   "datetime"
    t.integer  "provider_id_id"
    t.integer  "consumer_id_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["consumer_id_id"], name: "index_reservations_on_consumer_id_id"
    t.index ["provider_id_id"], name: "index_reservations_on_provider_id_id"
  end

end
