class RemoveContentUserIdFromItem < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :users, :items
  end
end
