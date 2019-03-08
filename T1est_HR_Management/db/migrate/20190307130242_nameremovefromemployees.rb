class Nameremovefromemployees < ActiveRecord::Migration[5.2]
  def change
  	remove_column :employees,:name
  end
end
