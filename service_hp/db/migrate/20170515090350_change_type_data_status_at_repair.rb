class ChangeTypeDataStatusAtRepair < ActiveRecord::Migration[5.0]
  def change
  	change_column :repairs, :status, :integer, default: 0

  end
end
