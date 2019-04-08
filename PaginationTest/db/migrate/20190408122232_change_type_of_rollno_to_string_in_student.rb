class ChangeTypeOfRollnoToStringInStudent < ActiveRecord::Migration[5.2]
  def change
  	change_column :students, :subject, :string
  end
end
