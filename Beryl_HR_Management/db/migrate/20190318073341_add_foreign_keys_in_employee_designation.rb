class AddForeignKeysInEmployeeDesignation < ActiveRecord::Migration[5.2]
  def change
  	add_reference :employees, :designation, foreign_key:true
  	
  end
end
