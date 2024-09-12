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

ActiveRecord::Schema[7.2].define(version: 2024_09_12_094932) do
  create_table "data", force: :cascade do |t|
    t.string "webdata_sn"
    t.string "webdata_msvn"
    t.string "webdata_ssvn"
    t.string "webdata_pv_type"
    t.string "webdata_rate_p"
    t.string "webdata_now_p"
    t.string "webdata_today_e"
    t.string "webdata_total_e"
    t.string "webdata_alarm"
    t.string "webdata_utime"
    t.string "cover_mid"
    t.string "cover_ver"
    t.string "cover_wmode"
    t.string "cover_ap_ssid"
    t.string "cover_ap_ip"
    t.string "cover_ap_mac"
    t.string "cover_sta_ssid"
    t.string "cover_sta_rssi"
    t.string "cover_sta_ip"
    t.string "cover_sta_mac"
    t.string "status_a"
    t.string "status_b"
    t.string "status_c"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["webdata_sn"], name: "index_data_on_webdata_sn"
  end
end
