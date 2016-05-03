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

ActiveRecord::Schema.define(version: 20160503155355) do

  create_table "asesors", force: :cascade do |t|
    t.string   "name",                                     null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "identification_file_name"
    t.string   "identification_content_type"
    t.integer  "identification_file_size"
    t.datetime "identification_updated_at"
  end

  add_index "asesors", ["email"], name: "index_asesors_on_email", unique: true
  add_index "asesors", ["reset_password_token"], name: "index_asesors_on_reset_password_token", unique: true

  create_table "certificates", id: false, force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "asesor_id"
    t.string   "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "certificates", ["asesor_id"], name: "index_certificates_on_asesor_id"
  add_index "certificates", ["subject_id"], name: "index_certificates_on_subject_id"

  create_table "lectures", force: :cascade do |t|
    t.time     "hour_end"
    t.time     "hour_start",    null: false
    t.string   "place",         null: false
    t.integer  "cost_per_hour"
    t.integer  "asesor_id"
    t.integer  "subject_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "date_lecture"
    t.string   "title"
  end

  add_index "lectures", ["asesor_id"], name: "index_lectures_on_asesor_id"
  add_index "lectures", ["subject_id"], name: "index_lectures_on_subject_id"

  create_table "students", force: :cascade do |t|
    t.string   "student"
    t.integer  "lecture_id"
    t.integer  "valoration"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "students", ["lecture_id"], name: "index_students_on_lecture_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
