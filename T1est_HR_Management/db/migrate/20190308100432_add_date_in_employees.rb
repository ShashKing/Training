class AddDateInEmployees < ActiveRecord::Migration[5.2]
  def change
  	add_column :employees,:date_of_birth,:date
  end
end
