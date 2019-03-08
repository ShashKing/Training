class Addindexinskill < ActiveRecord::Migration[5.2]
  def change
  	remove_column :employees,:skill
  end
end
