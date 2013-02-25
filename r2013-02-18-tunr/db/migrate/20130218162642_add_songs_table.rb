class AddSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :image
      t.string :filename
      t.integer :artist_id, :default => 0
      t.integer :album_id, :default => 0
      t.timestamps
    end
  end
end
