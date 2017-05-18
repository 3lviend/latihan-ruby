class AddFieldStatusAtItemRepair < ActiveRecord::Migration[5.0]
  def change
  	add_column :itemrepairs, :status, :string
  end
end
