class AddColumnsToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :question_id, :integer
    add_column :answers, :user_id, :integer
    add_column :answers, :text, :text
  end
end
