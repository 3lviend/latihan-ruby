class AddColumnItemrepairIdAtRepair < ActiveRecord::Migration[5.0]
  def change
  	add_column :repairs, :itemrepair_id, :integer
  end
end
