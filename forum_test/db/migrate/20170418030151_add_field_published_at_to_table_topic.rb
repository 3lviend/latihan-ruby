class AddFieldPublishedAtToTableTopic < ActiveRecord::Migration[5.0]
  def change
  	add_column :topics, :published_at, :datetime
  end
end
