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

ActiveRecord::Schema.define(version: 20160715033514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "admins", ["user_id"], name: "index_admins_on_user_id", using: :btree

  create_table "medics", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "crm"
    t.string   "workHours"
    t.string   "workDays"
    t.text     "expertise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "medics", ["user_id"], name: "index_medics_on_user_id", using: :btree

  create_table "nurses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "coren"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "nurses", ["user_id"], name: "index_nurses_on_user_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "patients", ["user_id"], name: "index_patients_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name",                                          null: false
    t.integer  "lot"
    t.string   "block"
    t.integer  "number"
    t.string   "street",                                        null: false
    t.string   "neighborhood",                                  null: false
    t.string   "complement"
    t.string   "city",                                          null: false
    t.string   "state",                                         null: false
    t.string   "country",                                       null: false
    t.integer  "cep",                                           null: false
    t.integer  "phoneOne",               limit: 8,              null: false
    t.integer  "phoneTwo",               limit: 8
    t.integer  "phoneThree",             limit: 8
    t.integer  "cpf",                    limit: 8,              null: false
    t.integer  "rg",                     limit: 8,              null: false
    t.integer  "rgExpeditor",                                   null: false
    t.date     "birthday",                                      null: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
