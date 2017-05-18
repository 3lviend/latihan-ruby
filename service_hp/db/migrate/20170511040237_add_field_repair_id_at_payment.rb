class AddFieldRepairIdAtPayment < ActiveRecord::Migration[5.0]
  def change
  	add_column :payments, :repair_id, :integer
  end
end
