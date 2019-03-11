class AddGenderInEmployee < ActiveRecord::Migration[5.2]
  def change
  	add_reference :employees,:gender,foreign_key:true
  end
end
