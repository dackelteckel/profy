class AddColumnsToFeedContents < ActiveRecord::Migration[5.2]
  def change
    add_column :feed_contents, :content_id, :integer
    add_column :feed_contents, :content_type, :string
    add_column :feed_contents, :group_id, :integer
  end
end
