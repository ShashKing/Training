class Stringtoadress < ActiveRecord::Migration[5.2]
  def change
  	rename_column :employees,:string,:address
  end
end
