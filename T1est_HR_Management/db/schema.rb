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

ActiveRecord::Schema.define(version: 2019_03_11_092343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.bigint "department_id"
    t.bigint "employee_code"
    t.string "first_name"
    t.string "last_name"
    t.string "designation"
    t.bigint "current_CTC"
    t.bigint "gender_id"
    t.date "date_of_birth"
    t.string "email"
    t.string "skill", default: [], array: true
    t.string "password"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["employee_code"], name: "index_employees_on_employee_code", unique: true
    t.index ["gender_id"], name: "index_employees_on_gender_id"
    t.index ["role_id"], name: "index_employees_on_role_id"
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "genders"
  add_foreign_key "employees", "roles"
end
