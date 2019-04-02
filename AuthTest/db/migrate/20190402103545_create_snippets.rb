class CreateSnippets < ActiveRecord::Migration[5.2]
  def change
    create_table :snippets do |t|
      t.string :plain_code
      t.string :highlighted_code
      t.string :language

      t.timestamps
    end
  end
end
