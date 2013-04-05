Artist.delete_all
Album.delete_all
Song.delete_all

r1 = Artist.create(:name => 'Michael Jackson')
r2 = Artist.create(:name => 'Nirvana')
r3 = Artist.create(:name => 'Common')

a1 = Album.create(:name => 'Thriller', :image => 'thriller.jpg')
a2 = Album.create(:name => 'Nevermind', :image => 'nevermind.jpg')
a3 = Album.create(:name => 'Like Water For Chocolate', :image => 'like_water_for_chocolate.jpg')

s1 = Song.create(:name => 'Thriller', :position => 1, :filename => 'thriller.m4a')
s2 = Song.create(:name => 'Billie Jean', :position => 2, :filename => 'billie_jean.m4a')
s3 = Song.create(:name => 'Smells Like Teen Spirit', :position => 3, :filename => 'smells_like_teen_spirit.m4a')
s4 = Song.create(:name => 'The Light', :position => 4, :filename => 'the_light.m4a')


r1.albums << a1
r2.albums << a2
r3.albums << a3
a1.songs << s1 << s2
a2.songs << s3
a3.songs << s4