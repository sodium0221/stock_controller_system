class AddAlergyToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :allergy, :boolean
    add_column :items, :contact_order, :string
  end
end
