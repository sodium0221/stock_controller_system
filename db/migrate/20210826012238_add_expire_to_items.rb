class AddExpireToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :expire, :date
    add_column :items, :unit_price, :integer
    add_column :items, :material_name, :string
    add_column :items, :demand_unit, :integer
    add_column :items, :producing_unit, :integer
    add_column :items, :yield, :integer
    add_column :items, :orders_num, :integer
  end
end
