class AddAccountForeignKeyInAccountHistory < ActiveRecord::Migration[5.2]
  def change
  	add_reference :account_histories, :account, foreign_key: true
  end
end
