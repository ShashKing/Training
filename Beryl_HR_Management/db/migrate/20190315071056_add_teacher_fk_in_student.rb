class AddTeacherFkInStudent < ActiveRecord::Migration[5.2]
  def change
  	add_reference :students, :teacher
  end
end
