User.delete_all
Task.delete_all
Priority.delete_all

u1 = User.create(:name => 'bob', :email => 'bob@bob.com', :password => 'bob')
u2 = User.create(:name => 'joe', :email => 'joe@joe.com', :password => 'joe')
u3 = User.create(:name => 'sue', :email => 'sue@sue.com', :password => 'sue')

p1 = Priority.create(:name => 'p1', :color => '#FF0000', :value => 1)
p2 = Priority.create(:name => 'p2', :color => '#FFFF00', :value => 2)
p3 = Priority.create(:name => 'p3', :color => '#0000FF', :value => 3)

t1 = Task.create(:address => '10 East 21st Street NYC', :title => 'Task 1', :description => 'This is Task 1', :duedate => '2013-03-01')
t2 = Task.create(:address => 'Paris, France', :title => 'Task 2', :description => 'This is Task 2', :duedate => '2013-03-02')
t3 = Task.create(:address => 'London, England', :title => 'Task 3', :description => 'This is Task 3', :duedate => '2013-03-03')

t1.priority = p1
t1.save
t2.priority = p2
t2.save
t3.priority = p3
t3.save

u1.priorities << p1 << p2 << p3
u1.tasks << t1 << t2 << t3
