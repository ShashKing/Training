class ChangeclasstoclassName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :students,:rollno,:roll_no
  end
end
