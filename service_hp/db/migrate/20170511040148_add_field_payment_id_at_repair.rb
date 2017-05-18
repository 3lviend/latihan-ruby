class AddFieldPaymentIdAtRepair < ActiveRecord::Migration[5.0]
  def change
  	add_column :repairs, :payment_id, :integer
  end
end
