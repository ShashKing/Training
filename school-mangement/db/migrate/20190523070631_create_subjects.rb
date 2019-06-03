class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.integer :hindi
      t.integer :english
      t.integer :maths
      t.integer :science
      t.integer :sst
      t.integer :gk
      t.integer :drawing
      t.integer :sanskrit
      t.integer :computer
      t.integer :pt
      t.timestamps
    end
  end
end
