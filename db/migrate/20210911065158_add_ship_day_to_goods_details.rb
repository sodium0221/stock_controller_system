class AddShipDayToGoodsDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :goods_details, :ship_day, :date
    add_column :goods_details, :product_day, :date
  end
end
