class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update, :index, :destroy]
  
  def index
    @items = Item.paginate(page: params[:page])
  end
  
  def show
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "登録しました"
      redirect_to items_path
    else
      render :new
    end 
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = "原料情報を更新しました。"
      redirect_to items_path
    else
      render :edit
    end 
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    flash[:success] = "#{@item.material_name}のデータを削除しました。"
    redirect_to items_url
  end
  
  private
    
    def item_params
      params.require(:item).permit(:material_name, :contact_order, :unit_price, :allergy)
    end
    
    def set_item
      @item = Item.find(params[:id])
    end
end
