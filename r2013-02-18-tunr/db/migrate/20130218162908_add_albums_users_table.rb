class AddAlbumsUsersTable < ActiveRecord::Migration
  def change
    create_table :albums_users, :id => false do |t|
      t.integer :user_id
      t.integer :album_id
    end
  end
end
