class Renameteachersid < ActiveRecord::Migration[5.2]
  def change
  	rename_column :students,:teachers_id,:teacher_id
  end
end
