class ProductsController < ApplicationController
  
  def new
    @item = Item.find(params[:item_id])
    @product = Product.find(params[:id])
  end
end
