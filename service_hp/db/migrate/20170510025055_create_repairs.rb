class CreateRepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :repairs do |t|
      t.integer :customer_id
      t.integer :item_id
      t.integer :staff_id
      
      t.timestamps
    end
  end
end
