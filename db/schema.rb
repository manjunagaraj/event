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

ActiveRecord::Schema.define(version: 20161116071447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eventts", force: :cascade do |t|
    t.string   "title"
    t.string   "venue"
    t.datetime "date"
    t.datetime "time"
    t.string   "description"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "owner_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.integer  "invitee_id"
    t.integer  "inviter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "eventt_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "uname"
    t.string   "email"
    t.integer  "phnumber"
    t.integer  "event_id"
    t.integer  "paasword_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
