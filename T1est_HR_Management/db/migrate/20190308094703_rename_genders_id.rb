class RenameGendersId < ActiveRecord::Migration[5.2]
  def change
  	rename_column :employees,:genders_id,:gender_id
  end
end
