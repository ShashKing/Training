class RenameClassInStudent < ActiveRecord::Migration[5.2]
  def change
  	rename_column :students, :class, :subject
  end
end
