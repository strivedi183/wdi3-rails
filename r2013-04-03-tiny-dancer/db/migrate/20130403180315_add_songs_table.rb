class AddSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :position
      t.string :filename
      t.integer :album_id
      t.timestamps
    end
  end
end
