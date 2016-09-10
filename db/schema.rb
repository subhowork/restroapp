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

ActiveRecord::Schema.define(version: 20160910102119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "empid"
    t.string   "location"
    t.string   "surname"
    t.datetime "dob"
    t.string   "fathername"
    t.string   "mothername"
    t.text     "address"
    t.boolean  "infosyspass"
    t.boolean  "infosysfoodcourtpass"
    t.boolean  "dlfpass"
    t.datetime "policeverificationstartdate"
    t.datetime "policeverificationenddate"
    t.datetime "policeverificationreminderdate"
    t.datetime "medical"
    t.datetime "medicalexpirydate"
    t.datetime "medicalreminderdate"
    t.datetime "arrivaldate"
    t.binary   "photo"
    t.string   "grandfathername"
    t.integer  "age"
    t.string   "pan"
    t.string   "responsibility"
    t.string   "comments"
    t.string   "education"
  end

end
