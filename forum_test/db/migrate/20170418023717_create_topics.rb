class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.string :description
      t.integer :like
      t.integer :dislike
      t.integer :total_view
      t.timestamps
    end
  end
end
