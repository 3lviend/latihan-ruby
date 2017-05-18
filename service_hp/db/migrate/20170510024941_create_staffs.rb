class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :role_name
      
      t.timestamps
    end
  end
end
