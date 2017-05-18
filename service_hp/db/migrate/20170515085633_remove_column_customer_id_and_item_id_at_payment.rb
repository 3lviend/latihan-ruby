class RemoveColumnCustomerIdAndItemIdAtPayment < ActiveRecord::Migration[5.0]
  def change
  	remove_column :payments, :customer_id, :integer
  	remove_column :payments, :item_id, :integer
  end
end
