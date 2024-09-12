class CreateData < ActiveRecord::Migration[7.2]
  def change
    create_table :data do |t|
      t.string :webdata_sn
      t.string :webdata_msvn
      t.string :webdata_ssvn
      t.string :webdata_pv_type
      t.string :webdata_rate_p
      t.string :webdata_now_p
      t.string :webdata_today_e
      t.string :webdata_total_e
      t.string :webdata_alarm
      t.string :webdata_utime
      # t.string :cover_mid
      # t.string :cover_ver
      # t.string :cover_wmode
      # t.string :cover_ap_ssid
      # t.string :cover_ap_ip
      # t.string :cover_ap_mac
      # t.string :cover_sta_ssid
      # t.string :cover_sta_rssi
      # t.string :cover_sta_ip
      # t.string :cover_sta_mac
      # t.string :status_a
      # t.string :status_b
      # t.string :status_c

      t.timestamps
    end

    add_index :data, :webdata_sn
  end
end
