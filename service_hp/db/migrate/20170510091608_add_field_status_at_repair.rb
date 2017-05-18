class AddFieldStatusAtRepair < ActiveRecord::Migration[5.0]
  def change
  	add_column :repairs, :status, :string
  end
end
