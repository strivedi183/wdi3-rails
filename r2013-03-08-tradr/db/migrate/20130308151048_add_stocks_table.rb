class AddStocksTable < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.decimal :price
      t.integer :shares
      t.integer :user_id
      t.timestamps
    end
  end
end
