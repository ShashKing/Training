class RenameEmployeesIdInAddress < ActiveRecord::Migration[5.2]
  def change
  	rename_column :addresses,:employees_id,:employee_id
  end
end
