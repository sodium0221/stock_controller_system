class GoodsController < ApplicationController
  before_action :set_goods, only: [:edit, :update, :stock, :filling_report]
  before_action :logged_in_user, only: [:show, :edit, :update, :index, :destroy]
  
  def index
    @goods = Good.all
  end 
  
  def new
    @good = Good.new
  end
  
  def create
    @good = Good.new(goods_params)
    if @good.save
      flash[:success] = "製品を登録しました。"
      redirect_to goods_path
    else
      render :new
    end
  end 
  
  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    flash[:success] = "#{@good.client_name}・#{@good.goods_name}・#{@good.quantity}を削除しました。"
    redirect_to goods_url
  end
  
  def stock
  end
  
  def product_report
    @goods = Good.all
  end
  
  def filling_report
  end
  
  def filling_report_func
  end
  

  
  private
  
  def goods_params
    params.require(:good).permit(:client_name, :goods_name, :quantity)
  end
  
  def set_goods
    @good = Good.find(params[:id])
  end
  
end
