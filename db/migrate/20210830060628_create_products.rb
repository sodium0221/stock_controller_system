class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :lot
      t.string :stock_amount
      t.integer :demand_unit
      t.integer :producing_unit
      t.integer :yield
      t.integer :orders_num
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
