class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :hindi
      t.string :english
      t.string :maths
      t.string :science
      t.string :sst
      t.string :gk
      t.string :drawing
      t.string :sanskrit
      t.string :computer
      t.string :pt

      t.timestamps
    end
  end
end
