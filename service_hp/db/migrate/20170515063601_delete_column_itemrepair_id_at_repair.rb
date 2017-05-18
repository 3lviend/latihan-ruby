class DeleteColumnItemrepairIdAtRepair < ActiveRecord::Migration[5.0]
  def change
  	remove_column :repairs, :item_id, :integer
  	remove_column :itemrepairs, :repair_id, :integer
  	add_column :items, :repair_id, :integer
  end
end
