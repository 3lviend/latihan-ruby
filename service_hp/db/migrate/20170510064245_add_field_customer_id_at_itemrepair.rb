class AddFieldCustomerIdAtItemrepair < ActiveRecord::Migration[5.0]
  def change
  	add_column :itemrepairs, :customer_id, :integer
  end
end
