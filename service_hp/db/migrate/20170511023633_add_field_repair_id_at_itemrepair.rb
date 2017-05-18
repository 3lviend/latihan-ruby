class AddFieldRepairIdAtItemrepair < ActiveRecord::Migration[5.0]
  def change
  	add_column :itemrepairs, :repair_id, :integer
  end
end
