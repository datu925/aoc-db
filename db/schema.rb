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

ActiveRecord::Schema.define(version: 20160704083015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actor_dance_types", force: :cascade do |t|
    t.integer  "actor_detail_id"
    t.integer  "dance_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "actor_details", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "representation"
    t.string   "website"
    t.string   "location"
    t.string   "pronouns"
    t.string   "height"
    t.string   "weight"
    t.string   "singer"
    t.string   "vocal_range"
    t.string   "classical"
    t.string   "instrument"
    t.string   "disability"
    t.string   "dance_styles"
    t.text     "bio"
    t.integer  "age_min"
    t.integer  "age_max"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "headshot_file_name"
    t.string   "headshot_content_type"
    t.integer  "headshot_file_size"
    t.datetime "headshot_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
  end

  create_table "actor_voice_types", force: :cascade do |t|
    t.integer  "actor_detail_id"
    t.integer  "voice_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "dance_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identifications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "identity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "identities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "religions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "religious_affiliations", force: :cascade do |t|
    t.integer  "actor_detail_id"
    t.integer  "religion_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "union_memberships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "union_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_genders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.string   "account_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "voice_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
