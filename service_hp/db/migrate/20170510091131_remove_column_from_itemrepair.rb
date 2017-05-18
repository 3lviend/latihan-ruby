class RemoveColumnFromItemrepair < ActiveRecord::Migration[5.0]
  def change
  	remove_column :itemrepairs, :status
  end
end
