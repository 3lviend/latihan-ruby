class AddFieldStaffIdAtCustomer < ActiveRecord::Migration[5.0]
  def change
  	add_column :customers, :staff_id, :integer
  end
end
