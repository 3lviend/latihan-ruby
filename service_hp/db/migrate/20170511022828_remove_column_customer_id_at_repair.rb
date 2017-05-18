class RemoveColumnCustomerIdAtRepair < ActiveRecord::Migration[5.0]
  def change
  	remove_column :repairs, :customer_id
  end
end
