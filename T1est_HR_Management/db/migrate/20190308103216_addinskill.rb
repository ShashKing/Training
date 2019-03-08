class Addinskill < ActiveRecord::Migration[5.2]
  def change
  	 add_column :employees,:skill, :string, array: true, default: []
  end
end
