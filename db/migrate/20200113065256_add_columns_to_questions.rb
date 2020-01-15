class AddColumnsToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :user_id, :integer
    add_column :questions, :text, :text
    add_column :questions, :group_id, :integer
  end
end
