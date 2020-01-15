class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :group_id, :integer
    add_column :users, :family_name, :string
    add_column :users, :first_name, :string
    add_column :users, :family_name_kana, :string
    add_column :users, :first_name_kana, :string
  end
end
