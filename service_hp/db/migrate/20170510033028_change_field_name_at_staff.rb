class ChangeFieldNameAtStaff < ActiveRecord::Migration[5.0]
  def change
  	rename_column :staffs, :role_name, :role_id
  end
end
