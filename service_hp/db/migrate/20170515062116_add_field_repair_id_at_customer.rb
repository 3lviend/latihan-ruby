class AddFieldRepairIdAtCustomer < ActiveRecord::Migration[5.0]
  def change
  	add_column :customers, :repair_id, :integer
  end
end
