class AddColumnInEmployee < ActiveRecord::Migration[5.2]
  def change
  	add_column :employees,:employee_code,:bigint
  	add_column :employees,:first_name,:string
  	add_column :employees,:last_name,:string
  	add_column :employees,:designation,:string
  	add_column :employees,:current_CTC,:bigint
   end
end
