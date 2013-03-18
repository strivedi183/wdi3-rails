User.delete_all
Subscriber.delete_all
Administrator.delete_all
Subscription.delete_all

u1 = User.create(username: 'user', email: 'user@gmail.com', password: 'a', password_confirmation: 'a')
u2 = User.create(username: 'joe', email: 'joe@gmail.com', password: 'a', password_confirmation: 'a')
s1 = Subscriber.create(tagline: 'hey', bio: 'my bio', gender: 'female', age: 18)
a1 = Administrator.create(role: 'db', ssn: '111-22-3333', tel: '1-111-222-3333')

s1.user = u1
s1.save
a1.user = u2
a1.save
