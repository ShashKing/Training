class AddForeignKeyInAppointment < ActiveRecord::Migration[5.2]
  def change
  	add_reference :appointments, :user, forein_key: true
  	  	add_reference :appointments, :doctor, forein_key: true
  end
end
