class AddTableRepairsItems < ActiveRecord::Migration[5.0]
  def change
  	create_table :items_repairs do |t|
  		t.integer :repair_id, index: true
  		t.integer :item_id, index: true
  	end
  end
end
