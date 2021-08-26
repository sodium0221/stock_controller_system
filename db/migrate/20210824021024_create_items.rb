class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.date :worked_on
      t.string :note
      t.string :stock
      t.string :lot
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
