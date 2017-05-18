class AddFieldItemrepairIdAtCustomer < ActiveRecord::Migration[5.0]
  def change
  	add_column :customers, :itemrepair_id, :integer
  end
end
