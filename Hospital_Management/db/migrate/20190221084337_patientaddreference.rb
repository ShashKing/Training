class Patientaddreference < ActiveRecord::Migration[5.2]
  def change
  	add_reference :patients,:doctors,foreign_key:true
  end
end
