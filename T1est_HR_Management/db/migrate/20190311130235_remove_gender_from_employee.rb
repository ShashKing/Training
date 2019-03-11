class RemoveGenderFromEmployee < ActiveRecord::Migration[5.2]
  def change
  	remove_column :employees,:gender_id
  end
end
