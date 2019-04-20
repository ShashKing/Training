class AddColumnInAddressAndUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :phone_number, :string
  	add_column :addresses, :state, :string
  end
end
