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

ActiveRecord::Schema.define(version: 20141221141329) do

  create_table "examinees", force: true do |t|
    t.string   "unit"
    t.integer  "roll_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "examinees_details", force: true do |t|
    t.string   "name"
    t.string   "father_name"
    t.float    "ssc_roll",           limit: 24
    t.float    "ssc_gpa",            limit: 24
    t.float    "hsc_roll",           limit: 24
    t.float    "hsc_gpa",            limit: 24
    t.string   "quota"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "examinee_id"
    t.integer  "result_id"
    t.integer  "results_details_id"
  end

  add_index "examinees_details", ["examinee_id"], name: "index_examinees_details_on_examinee_id", using: :btree
  add_index "examinees_details", ["result_id"], name: "index_examinees_details_on_result_id", using: :btree
  add_index "examinees_details", ["results_details_id"], name: "index_examinees_details_on_results_details_id", using: :btree

  create_table "results", force: true do |t|
    t.float    "marks",      limit: 24
    t.integer  "merit"
    t.string   "list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results_details", force: true do |t|
    t.float    "physics",            limit: 24
    t.float    "chemistry",          limit: 24
    t.float    "math",               limit: 24
    t.float    "biology",            limit: 24
    t.float    "ban_eng",            limit: 24
    t.float    "bangla",             limit: 24
    t.float    "english",            limit: 24
    t.float    "analytical_ability", limit: 24
    t.float    "general_knowledge",  limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.string   "parameter"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
