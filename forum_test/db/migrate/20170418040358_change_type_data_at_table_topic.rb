class ChangeTypeDataAtTableTopic < ActiveRecord::Migration[5.0]
  def change
  	change_column :topics, :description, :text
  end
end
