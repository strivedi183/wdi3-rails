User.delete_all
Stock.delete_all

u1 = User.create(:name => 'bob', :email => 'bob@bob.com', :password => 'bob', :password_confirmation => 'bob', :balance => 1000000)
u2 = User.create(:name => 'joe', :email => 'joe@joe.com', :password => 'joe', :password_confirmation => 'joe', :balance => 2000000)
u3 = User.create(:name => 'sue', :email => 'sue@sue.com', :password => 'sue', :password_confirmation => 'sue', :balance => 3000000)

s1 = Stock.create(:symbol => 'AAPL', :shares => '100')
s2 = Stock.create(:symbol => 'GOOG', :shares => '100')
s3 = Stock.create(:symbol => 'F', :shares => '100')
s4 = Stock.create(:symbol => 'T', :shares => '100')

u1.stocks << s1 << s2
u2.stocks << s3
u3.stocks << s4