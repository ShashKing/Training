class AddForeignKeyInEmployee < ActiveRecord::Migration[5.2]
  def change
  	add_reference :employees,:roles,foreign_key:true
  	add_reference :employees,:department,foreign_key:true
  end
end
