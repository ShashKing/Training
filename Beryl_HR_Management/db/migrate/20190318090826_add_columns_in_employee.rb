class AddColumnsInEmployee < ActiveRecord::Migration[5.2]
  def change
  	add_column :employees, :current_salary, :bigint
  	add_column :employees, :employee_code, :bigint, unique:true
  end
end
