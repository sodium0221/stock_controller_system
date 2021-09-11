class CreateGoodsDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :goods_details do |t|
      t.string :lot
      t.date :expire
      t.integer :amount
      t.string :product_amount
      t.string :ship_amount
      t.string :stock_amount
      t.string :note
      
      t.timestamps
    end
  end
end
