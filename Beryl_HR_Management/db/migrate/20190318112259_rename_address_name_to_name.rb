class RenameAddressNameToName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :addresses, :address_name, :ad_name
  end
end
