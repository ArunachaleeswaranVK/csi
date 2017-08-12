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

ActiveRecord::Schema.define(version: 20170812091024) do

  create_table "institutes", force: :cascade do |t|
    t.string   "imno",       null: false
    t.string   "name",       null: false
    t.string   "address",    null: false
    t.string   "city",       null: false
    t.string   "district"
    t.string   "state",      null: false
    t.string   "pincode",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "institutes", ["imno"], name: "index_institutes_on_imno", unique: true

  create_table "nominated_members", force: :cascade do |t|
    t.string   "ncode"
    t.string   "nm_name"
    t.string   "nm_phone"
    t.string   "nm_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "imno"
  end

  add_index "nominated_members", ["imno"], name: "index_nominated_members_on_imno"

  create_table "nominating_authorities", force: :cascade do |t|
    t.string   "na_name"
    t.string   "na_phone"
    t.string   "na_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "imno"
  end

  add_index "nominating_authorities", ["imno"], name: "index_nominating_authorities_on_imno"

  create_table "sbcs", force: :cascade do |t|
    t.string   "sbc_membership_no"
    t.string   "sbc_name",          null: false
    t.string   "sbc_phone"
    t.string   "sbc_email"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "imno"
  end

  add_index "sbcs", ["imno"], name: "index_sbcs_on_imno"

end
