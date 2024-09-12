class DataController < ApplicationController
  skip_forgery_protection

  def show
    # load one week of data
    cutoff = Time.current - 1.week
    @history = Datum.where(webdata_sn: params[:sn]).where("created_at > ?", cutoff)
    @datum = Datum.where(webdata_sn: params[:sn]).last
  end

  def index
    @sns = Datum.distinct.pluck(:webdata_sn)
  end

  def create
    Datum.create!(data_params)
  end

  private

  def data_params
    # :cover_mid, :cover_ver, :cover_wmode, :cover_ap_ssid, :cover_ap_ip, :cover_ap_mac, :cover_sta_ssid, :cover_sta_rssi, :cover_sta_ip, :cover_sta_mac, :status_a, :status_b, :status_c
    params.permit(:webdata_sn, :webdata_msvn, :webdata_ssvn, :webdata_pv_type, :webdata_rate_p, :webdata_now_p, :webdata_today_e, :webdata_total_e, :webdata_alarm, :webdata_utime)
  end
end
