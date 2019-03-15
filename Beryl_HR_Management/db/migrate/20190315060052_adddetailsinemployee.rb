class Adddetailsinemployee < ActiveRecord::Migration[5.2]
  def change
  	add_column :employees,:first_name,:string
  	add_column :employees,:last_name,:string
  	add_column :employees,:address,:string
  	add_column :employees,:dob,:date

  end
end
