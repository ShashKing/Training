class Removepoistion < ActiveRecord::Migration[5.2]

  def change
  	remove_column("subjects","position")
  end
end
