class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  $days_of_the_week = %w{ 日 月 火 水 木 金 土 }
  
  # ページ出力前に1ヶ月分のデータの存在を確認・セットします。

  private
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "ログインしてください。"
        redirect_to login_url
      end 
    end
    
    def correct_user
      redirect_to(root_url) unless current_user?(@user)
    end 
    
    # システム管理権限所有者かどうか判定します。
    def admin_user
      redirect_to root_url unless current_user.admin?
    end
end
