class CreateEmployeesSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :employees_skills do |t|

      t.timestamps
    end
  end
end
