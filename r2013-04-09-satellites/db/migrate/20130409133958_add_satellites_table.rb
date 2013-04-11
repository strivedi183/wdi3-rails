class AddSatellitesTable < ActiveRecord::Migration
  def change
    create_table :satellites do |t|
      t.string :name
      t.string :image
      t.float :distance
      t.float :diameter
      t.float :period
      t.integer :planet_id
      t.timestamps
    end
  end
end
