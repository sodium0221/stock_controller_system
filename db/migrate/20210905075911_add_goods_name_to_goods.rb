class AddGoodsNameToGoods < ActiveRecord::Migration[5.1]
  def change
    add_column :goods, :goods_name, :string
    add_column :goods, :quantity, :integer
  end
end
