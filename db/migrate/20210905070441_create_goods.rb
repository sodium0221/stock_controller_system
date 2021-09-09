class CreateGoods < ActiveRecord::Migration[5.1]
  def change
    create_table :goods do |t|
      t.string :lot
      t.date :expire
      t.integer :amount
      t.string :article
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
