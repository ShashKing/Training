class AddColumnName < ActiveRecord::Migration[5.2]
  def change
  	add_column :skills,:name,:string
  end
end
