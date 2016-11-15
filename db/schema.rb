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

ActiveRecord::Schema.define(version: 20161115130447) do

  create_table "book_opinions", force: :cascade do |t|
    t.text     "book_opinion_text"
    t.string   "book_opinion_title"
    t.string   "book_opinion_name"
    t.boolean  "book_opinion_approved"
    t.integer  "book_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["book_id"], name: "index_book_opinions_on_book_id"
  end

  create_table "book_photos", force: :cascade do |t|
    t.string   "book_image"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_photos_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string   "book_name"
    t.text     "book_description"
    t.string   "book_link_to_buy"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "course_opinions", force: :cascade do |t|
    t.text     "course_opinion_text"
    t.string   "course_opinion_title"
    t.string   "course_opinion_name"
    t.boolean  "course_opinion_approved"
    t.integer  "course_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["course_id"], name: "index_course_opinions_on_course_id"
  end

  create_table "course_photos", force: :cascade do |t|
    t.string   "course_image"
    t.integer  "course_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["course_id"], name: "index_course_photos_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.text     "course_description"
    t.string   "course_link_to_info"
    t.string   "course_link_to_booking"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "profile_photos", force: :cascade do |t|
    t.string   "profile_image"
    t.integer  "profile_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["profile_id"], name: "index_profile_photos_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "years_in_practice"
    t.text     "profile_description"
    t.boolean  "teacher"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "profiles_books", id: false, force: :cascade do |t|
    t.integer "profile_id"
    t.integer "book_id"
    t.index ["book_id"], name: "index_profiles_books_on_book_id"
    t.index ["profile_id"], name: "index_profiles_books_on_profile_id"
  end

  create_table "profiles_courses", id: false, force: :cascade do |t|
    t.integer "profile_id"
    t.integer "course_id"
    t.index ["course_id"], name: "index_profiles_courses_on_course_id"
    t.index ["profile_id"], name: "index_profiles_courses_on_profile_id"
  end

  create_table "profiles_retreats", id: false, force: :cascade do |t|
    t.integer "profile_id"
    t.integer "retreat_id"
    t.index ["profile_id"], name: "index_profiles_retreats_on_profile_id"
    t.index ["retreat_id"], name: "index_profiles_retreats_on_retreat_id"
  end

  create_table "retreat_opinions", force: :cascade do |t|
    t.text     "retreat_opinion_text"
    t.string   "retreat_opinion_title"
    t.string   "retreat_opinion_name"
    t.boolean  "retreat_opinion_approved"
    t.integer  "retreat_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["retreat_id"], name: "index_retreat_opinions_on_retreat_id"
  end

  create_table "retreat_photos", force: :cascade do |t|
    t.string   "retreat_image"
    t.integer  "retreat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["retreat_id"], name: "index_retreat_photos_on_retreat_id"
  end

  create_table "retreats", force: :cascade do |t|
    t.string   "retreat_name"
    t.text     "retreat_description"
    t.string   "retreat_link_to_info"
    t.string   "retreat_link_to_booking"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
