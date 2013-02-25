class AddPriceToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :price, :decimal, :default => 0
  end
end
