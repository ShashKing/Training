class DoctorId < ActiveRecord::Migration[5.2]
  def change
  	rename_column("patients","doctors_id","doctor_id")
  end
end
