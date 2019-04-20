class StudenClassRename < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :class, :st_class
  end
end
