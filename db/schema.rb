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

ActiveRecord::Schema.define(version: 20150327205756) do

  create_table "members", force: :cascade do |t|
    t.string   "provider",    limit: 255
    t.string   "uid",         limit: 255
    t.string   "name",        limit: 255
    t.string   "profile_pic", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_group_options", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.integer  "question_group_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_group_questions", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.integer  "question_group_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_groups", force: :cascade do |t|
    t.integer  "question_type",      limit: 4
    t.integer  "section_id",         limit: 4
    t.integer  "position",           limit: 4
    t.boolean  "allow_other_option", limit: 1, default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "position",   limit: 4
    t.integer  "survey_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.boolean  "public",         limit: 1
    t.boolean  "login_required", limit: 1
    t.date     "end_date"
    t.text     "description",    limit: 65535
    t.string   "uid",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
