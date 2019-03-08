class RenameRolesIdtoRoleIdInEmployee < ActiveRecord::Migration[5.2]
  def change
  	rename_column :employees,:roles_id,:role_id
  end
end
