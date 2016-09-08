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

ActiveRecord::Schema.define(version: 20160520072940) do

  create_table "apprenticeships", force: :cascade do |t|
    t.integer  "jedi_id",    limit: 4
    t.integer  "padawan_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "entries", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "published"
    t.text     "content",    limit: 65535
    t.string   "url",        limit: 255
    t.string   "author",     limit: 255
    t.integer  "feed_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "feeds", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "url",         limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "jedis", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "padawans", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "address",    limit: 65535
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.string   "visited_by", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "price",                  precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "attachment", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
