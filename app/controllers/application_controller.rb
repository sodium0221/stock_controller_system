class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  $days_of_the_week = %w{ 日 月 火 水 木 金 土 }
  
  # ページ出力前に1ヶ月分のデータの存在を確認・セットします。
  def set_one_month
    @first_day = params[:date].nil? ?
    Date.current.beginning_of_month : params[:date].to_date
    @last_day = @first_day.end_of_month
    one_month = [*@first_day..@last_day]
    #ユーザーに紐づく1ヶ月分のレコードを検索し取得します。
    @month = @user.items.where(worked_on: @first_day..@last_day).order(:worked_on)
    
    unless one_month.count == @month.count #それぞれの件数が一致するか評価
      ActiveRecord::Base.transaction do
        # 繰り返し処理により1ヶ月分の勤怠データを生成します。
        one_month.each { |day| @user.items.create!(worked_on: day) }
      end
      @month = @user.items.where(worked_on: @first_day..@last_day).order(:worked_on)
    end
    
  rescue ActiveRecord::RecordInvalid 
    flash[:danger] = "ページ情報の取得に失敗しました。再アクセスしてください。"
    redirect_to root_url
  end
end
