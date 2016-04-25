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

ActiveRecord::Schema.define(version: 20160424214843) do

  create_table "deposits", force: :cascade do |t|
    t.datetime "date"
    t.string   "deposit_identifier"
    t.string   "deposit_receipt_photo"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "skater_id"
    t.datetime "date"
    t.integer  "payment_type_id"
    t.decimal  "amount"
    t.integer  "deposit_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "paymenttypes", force: :cascade do |t|
    t.string   "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skaters", force: :cascade do |t|
    t.string   "name"
    t.string   "derby_name"
    t.integer  "derby_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
