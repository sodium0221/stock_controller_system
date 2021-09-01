class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :edit_material_info]
  before_action :logged_in_user, only: [:show, :edit, :update, :index, :destroy]
  
  def index
    @items = Item.paginate(page: params[:page])
    @items = @items.where('material_name LIKE ?', "%#{params[:search]}%") if params[:search].present?
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
  end
  
  def update
    if @item.update_attributes(item_params)
      flash[:success] = "原料情報を更新しました。"
      redirect_to items_path
    else
      render :edit
    end 
  end
  
  def destroy
    @item.destroy
    flash[:success] = "#{@item.material_name}のデータを削除しました。"
    redirect_to items_url
  end
  
  def edit_material_info
  end 
  
  def update_material_info
  end
  
  private
    
    def item_params
      params.require(:item).permit(:material_name, :contact_order, :unit_price, :allergy)
    end
    
    def set_item
      @item = Item.find(params[:id])
    end
end
