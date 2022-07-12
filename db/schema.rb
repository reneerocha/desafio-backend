# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_12_165026) do

  create_table "deputies", force: :cascade do |t|
    t.string "name"
    t.integer "deputy_id"
    t.string "identity_number"
    t.string "state"
    t.string "party"
    t.integer "legislature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["legislature_id"], name: "index_deputies_on_legislature_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "expense_type"
    t.string "document_number"
    t.string "identity_number"
    t.string "document_type"
    t.datetime "issue_date"
    t.decimal "gloss_value"
    t.decimal "net_value"
    t.integer "month"
    t.integer "year"
    t.string "portion"
    t.string "passenger"
    t.string "batch"
    t.string "refund"
    t.string "restitution"
    t.string "document_url"
    t.integer "deputy_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "document_value"
    t.index ["deputy_id"], name: "index_expenses_on_deputy_id"
  end

  create_table "legislatures", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "deputies", "legislatures"
  add_foreign_key "expenses", "deputies"
end
