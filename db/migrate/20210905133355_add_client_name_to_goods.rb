class AddClientNameToGoods < ActiveRecord::Migration[5.1]
  def change
    add_column :goods, :client_name, :string
  end
end
