class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :firstname
      t.string :lastname
      t.text :email_id
      t.string :phone_number
      t.string :comments

      t.timestamps
    end
  end
end
