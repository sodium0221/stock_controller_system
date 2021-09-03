class ProductsController < ApplicationController
  
  def new
    @item = Item.find(params[:item_id])
    @product = Product.new
  end
  
  def create
    @item = Item.find(params[:item_id])
    @product = @item.products.new(products_params)
    if @product.save
      flash[:success] = "登録しました"
      redirect_to items_path
    else
      @items = Item.paginate(page: params[:page])
      @items = @items.where('material_name LIKE ?', "%#{params[:search]}%") if params[:search].present?
      flash[:danger] = "入力エラーが#{@product.errors.count}件ありました。<br>" + @product.errors.full_messages.join("<br>")
      redirect_to controller: :items, action: :index
    end 
  end
  
  private
  
   def products_params
     params.require(:item).permit(products: [:lot, :expire, :rog_amount])[:products]
   end
end
