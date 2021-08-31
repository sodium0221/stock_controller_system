class AddColumnRogDayToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :rog_day, :date
    add_column :products, :rog_amount, :integer
    add_column :products, :expire, :date
  end
end
