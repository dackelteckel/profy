class AddColumnsToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :key, :string, :unique => true
    add_column :groups, :detail, :text
  end
end
