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

ActiveRecord::Schema.define(version: 20170407020341) do

  create_table "batteries", force: :cascade do |t|
    t.string   "battery_typer"
    t.integer  "battery_votlage"
    t.string   "battery_ah_integer"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "batts", force: :cascade do |t|
    t.string   "batt_type"
    t.integer  "batt_voltage"
    t.decimal  "batt_ah"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
  end

  create_table "calculators", force: :cascade do |t|
    t.integer  "watts"
    t.decimal  "run_time"
    t.integer  "eff"
    t.decimal  "sun_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modifiers", force: :cascade do |t|
    t.string   "mod_type"
    t.decimal  "amperage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "solar_panels", force: :cascade do |t|
    t.string   "cell_type"
    t.decimal  "wattage"
    t.decimal  "voltage"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
