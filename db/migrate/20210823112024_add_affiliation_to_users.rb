class AddAffiliationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :affiliation, :string
    add_column :users, :employee_num, :integer
    add_column :users, :superior, :boolean
  end
end
