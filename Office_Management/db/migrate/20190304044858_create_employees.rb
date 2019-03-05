class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :string
      t.string :email
      t.string :password
      t.bigint :salary
      t.timestamps
    end
  end
end
