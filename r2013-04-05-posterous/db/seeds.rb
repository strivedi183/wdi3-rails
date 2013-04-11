Post.delete_all

p1 = Post.create(:title => 'Title 1', :author => 'Author 1', :body => 'Body 1')
p2 = Post.create(:title => 'Title 2', :author => 'Author 2', :body => 'Body 2')
p3 = Post.create(:title => 'Title 3', :author => 'Author 3', :body => 'Body 3')

date = Date.current
p1.post_date = (date - 3.days)
p1.save
p2.post_date = (date - 5.days)
p2.save
p3.post_date = (date - 7.days)
p3.save
