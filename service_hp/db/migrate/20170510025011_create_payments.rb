class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :customer_id
      t.integer :item_id
      t.integer :staff_id
      t.integer :total
      t.timestamps
    end
  end
end