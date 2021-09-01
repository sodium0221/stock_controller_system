class ProductsController < ApplicationController
  
  def new
    @item = Item.find(params[:item_id])
    @product = Product.new
  end
  
  def create
    @item = Item.find(params[:item_id])
    @prodduct = Product.find(params[:id])
  end
  

end
