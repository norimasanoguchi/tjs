ActiveRecord::Schema.define(version: 2019_08_21_120747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "talents", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.date "birthday", null: false
    t.integer "sex", null: false
    t.integer "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "visa_id"
    t.bigint "country_id"
    t.bigint "prefecture_id"
    t.integer "edu_level", null: false
    t.integer "japanese_level", null: false
    t.index ["country_id"], name: "index_talents_on_country_id"
    t.index ["prefecture_id"], name: "index_talents_on_prefecture_id"
    t.index ["visa_id"], name: "index_talents_on_visa_id"
  end

  create_table "visas", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "talents", "countries"
  add_foreign_key "talents", "prefectures"
  add_foreign_key "talents", "visas"
end
