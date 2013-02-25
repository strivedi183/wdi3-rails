Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Mixtape.delete_all

g1 = Genre.create(:name => 'Classical')
g2 = Genre.create(:name => 'Rock')
g3 = Genre.create(:name => 'Top 40')

s1 = Song.create(:price => 1.00, :name => 'Thriller', :image => 'http://michaelhutchenceandme.files.wordpress.com/2013/01/michael-jackson-thriller.jpg', :filename => 'thriller.m4a')
s2 = Song.create(:price => 1.00, :name => 'Billie Jean', :image => 'http://bluecrystall.com/wp-content/uploads/2013/02/04_billie_jean.jpg', :filename => 'billie_jean.m4a')
s3 = Song.create(:price => 1.00, :name => 'Smells Like Teen Spirit', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => 'smells_like_teen_spirit.m4a')
s4 = Song.create(:price => 1.00, :name => 'The Light', :image => 'http://upload.wikimedia.org/wikipedia/en/c/c5/CommonTheLightImport.jpg', :filename => 'the_light.m4a')

a1 = Album.create(:name => 'Thriller', :image => 'http://fanart.tv/fanart/music/f27ec8db-af05-4f36-916e-3d57f91ecf5e/albumcover/thriller-50225ab5861c9.jpg')
a2 = Album.create(:name => 'Nevermind', :image => 'http://www.nuclearblast.de/static/articles/155/155143.jpg/1000x1000.jpg')
a3 = Album.create(:name => 'The White Album', :image => 'http://1.bp.blogspot.com/-zNWEL8beMjI/T5t5XskDKSI/AAAAAAAAAcg/JmuB8j4KRFA/s1600/1000px-the_white_albumsvg.png')

r1 = Artist.create(:name => 'Michael Jackson', :image => 'http://www.tucsonsentinel.com/files/entryimages/michael_jackson_billie_jean.jpg')
r2 = Artist.create(:name => 'Nirvana', :image => 'http://thmg.photobucket.com/albums/v688/x0amy0x/journal%20icons/th_nirvana.bmp')
r3 = Artist.create(:name => 'Beatles', :image => 'http://3.bp.blogspot.com/-8AwKnLO-fjQ/URRDwak0Y0I/AAAAAAAAKvk/vm2qSErVwnY/s1600/The+Beatles+-+Teach+Me+Genealogy.jpg')

u1 = User.create(:name => 'Bob', :image => 'http://www.almostsavvy.com/wp-content/uploads/2011/04/profile-photo.jpg', :password => 'bob', :password_confirmation => 'bob', :balance => 44.44)
u2 = User.create(:name => 'Sam', :image => 'http://www.yoyobrain.com/images/profile_no_photo.png', :password => 'sam', :password_confirmation => 'sam', :balance => 33.33)
u3 = User.create(:name => 'Jill', :image => 'http://i2.wp.com/c0589922.cdn.cloudfiles.rackspacecloud.com/avatars/male200.png', :password => 'jill', :password_confirmation => 'jill', :balance => 22.22)
u4 = User.create(:name => 'Admin', :image => 'http://png-1.findicons.com/files/icons/716/user_task_report/256/user_anonymous_yellow_disabled.png', :password => 'admin', :password_confirmation => 'admin', :balance => 11.11)
u4.is_admin = true
u4.save

m1 = Mixtape.create(:name => 'Easy Listening')
m2 = Mixtape.create(:name => 'Workout Music')
m3 = Mixtape.create(:name => 'Old School')

s5 = Song.create(:price => 1.00, :name => 'In Bloom', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s6 = Song.create(:price => 1.00, :name => 'Come As You Are', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s7 = Song.create(:price => 1.00, :name => 'Breed', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s8 = Song.create(:price => 1.00, :name => 'Lithium', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s9 = Song.create(:price => 1.00, :name => 'Polly', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s10 = Song.create(:price => 1.00, :name => 'Territorial', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s11 = Song.create(:price => 1.00, :name => 'Drain You', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s12 = Song.create(:price => 1.00, :name => 'Lounge Act', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s13 = Song.create(:price => 1.00, :name => 'Stay Away', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s14 = Song.create(:price => 1.00, :name => 'On A Plain', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s15 = Song.create(:price => 1.00, :name => 'Something In The Way', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')
s16 = Song.create(:price => 1.00, :name => 'Endless, Nameless', :image => 'http://1.bp.blogspot.com/-cGB2478kDfE/UEoa2vLKODI/AAAAAAAAAHI/0j8CIaY47ZE/s1600/smells-like-teen-spirit-5001095126748.jpg', :filename => '')

r1.songs << s1 << s2
r2.songs = [s3]
a1.songs = [s1, s2]
a2.songs << s3
a2.songs << s5 << s6 << s7 << s8 << s9 << s10 << s11 << s12 << s13 << s14 << s15 << s16
g3.songs = [s1, s2, s3]
u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]
m3.songs = [s1, s2, s3]
u1.albums = [a1, a2]


