class AddColumnPaymentIdAtCustomer < ActiveRecord::Migration[5.0]
  def change
  	add_column :customers, :payment_id, :integer
  end
end
