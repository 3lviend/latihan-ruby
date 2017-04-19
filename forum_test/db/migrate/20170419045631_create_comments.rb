class CreateComments < ActiveRecord::Migration[5.0]
  
  def change
    create_table :comments do |t|
      t.string :isi
      t.integer :like
      t.integer :dislike

      t.timestamps
    end
  end
end
