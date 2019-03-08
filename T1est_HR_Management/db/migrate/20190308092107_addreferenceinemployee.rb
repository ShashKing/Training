class Addreferenceinemployee < ActiveRecord::Migration[5.2]
  def change
  	add_reference :employees,:genders,foreign_key:true
  end
end
