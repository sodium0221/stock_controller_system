class RemoveUserIdFromItem < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :items, :user_id
    remove_reference :items, :user_id, foreign_key: true
  end
end
