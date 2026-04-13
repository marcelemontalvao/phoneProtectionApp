# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_04_13_080703) do
  create_table "claims", force: :cascade do |t|
    t.string "claim_type"
    t.datetime "created_at", null: false
    t.text "description"
    t.integer "phone_id", null: false
    t.string "status"
    t.datetime "updated_at", null: false
    t.index ["phone_id"], name: "index_claims_on_phone_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "brand"
    t.datetime "created_at", null: false
    t.string "model"
    t.float "price"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "claims", "phones"
end
