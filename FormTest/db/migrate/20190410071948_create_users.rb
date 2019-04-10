class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :ph_number
      t.string :city
      t.string :state
      t.bigint :salary
      t.bigint :pincode

      t.timestamps
    end
  end
end
