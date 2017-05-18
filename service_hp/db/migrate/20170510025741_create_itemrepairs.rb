class CreateItemrepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :itemrepairs do |t|
      t.string :brand
      t.string :type_hp
      t.string :imei
      t.string :damage
      t.string :description
      
      t.timestamps
    end
  end
end
