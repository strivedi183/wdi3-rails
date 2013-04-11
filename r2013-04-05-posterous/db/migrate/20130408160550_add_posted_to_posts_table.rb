class AddPostedToPostsTable < ActiveRecord::Migration
  def change
    add_column :posts, :post_date, :date
  end
end
