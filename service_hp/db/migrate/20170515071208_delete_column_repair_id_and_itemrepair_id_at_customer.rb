class DeleteColumnRepairIdAndItemrepairIdAtCustomer < ActiveRecord::Migration[5.0]
  def change
  	remove_column :customers, :repair_id, :integer
  	remove_column :customers, :itemrepair_id, :integer
  end
end
