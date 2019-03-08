class Addindexinemployeecode < ActiveRecord::Migration[5.2]
  def change
  	add_index :employees,:employee_code,:unique => true
  	  end
end
