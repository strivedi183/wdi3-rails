class AddCharactersTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :hex
      t.string :symbol
      t.integer :code_id
      t.timestamps
    end
  end
end
