class AddAddressInEmployee < ActiveRecord::Migration[5.2]
  def change
  	add_column :employees, :current_address, :string
  	add_column :employees, :permanent_address, :string
  end
end
