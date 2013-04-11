Planet.delete_all
Satellite.delete_all

p1 = Planet.create(name: 'Earth', image: 'http://d1jqu7g1y74ds1.cloudfront.net/wp-content/uploads/2008/05/rosettaearth.jpg')
p2 = Planet.create(name: 'Mars', image: 'http://i.space.com/images/i/000/005/986/i02/vote-mars-landings-10-02.jpg?1294163306')
p3 = Planet.create(name: 'Jupiter', image: 'http://nssdc.gsfc.nasa.gov/image/planetary/jupiter/jupiter_gany.jpg')

s1 = Satellite.create(name: 'sputnik', image: 'http://upload.wikimedia.org/wikipedia/commons/b/b0/Sputnik_1.jpg', period: 96.2, distance: 7310, diameter: 2.2)
s2 = Satellite.create(name: 'Hubble', image: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/HST-SM4.jpeg/300px-HST-SM4.jpeg', period: 97, distance: 559, diameter: 2.4)
s3 = Satellite.create(name: 'MarsExpress', image:'http://upload.wikimedia.org/wikipedia/commons/9/9d/Mars-express-volcanoes-sm.jpg', period: 7.5, distance: 298, diameter: 3.6)

p1.satellites << s1
p2.satellites << s2
p3.satellites << s3