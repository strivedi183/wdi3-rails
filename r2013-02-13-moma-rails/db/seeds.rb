Artist.delete_all
Painting.delete_all

Artist.create(:name => 'picasso', :nationality => 'spanish', :dob => '1881', :period => 'cubism', :image => 'http://upload.wikimedia.org/wikipedia/commons/9/98/Pablo_picasso_1.jpg')
Artist.create(:name => 'goya', :nationality => 'spanish', :dob => '1746', :period => 'old masters', :image => 'http://upload.wikimedia.org/wikipedia/commons/b/bf/Vicente_L%C3%B3pez_Porta%C3%B1a_-_el_pintor_Francisco_de_Goya.jpg')
Artist.create(:name => 'dali', :nationality => 'spanish', :dob => '1904', :period => 'surrealism', :image => 'http://upload.wikimedia.org/wikipedia/commons/2/24/Salvador_Dal%C3%AD_1939.jpg')
Artist.create(:name => 'caravaggio', :nationality => 'italian', :dob => '1571', :period => 'baroque', :image => 'http://upload.wikimedia.org/wikipedia/commons/7/73/Bild-Ottavio_Leoni%2C_Caravaggio.jpg')
Artist.create(:name => 'rubens', :nationality => 'flemish', :dob => '1577', :period => 'baroque', :image => 'http://upload.wikimedia.org/wikipedia/commons/d/db/Rubens_Self-portrait_1623.jpg')

Painting.create(:title => 'guernica', :year => '1937', :medium => 'oil on canvas', :style => 'cubism', :image => 'http://upload.wikimedia.org/wikipedia/en/7/74/PicassoGuernica.jpg')
Painting.create(:title => 'the persistence of memory', :year => '1931', :medium => 'oil on canvas', :style => 'surrealist', :image => 'http://upload.wikimedia.org/wikipedia/en/d/dd/The_Persistence_of_Memory.jpg')
Painting.create(:title => 'the starry night', :year => '1889', :medium => 'oil on canvas', :style => 'post-impressionist', :image => 'http://upload.wikimedia.org/wikipedia/commons/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg')
Painting.create(:title => 'the scream', :year => '1893', :medium => 'oil on cardboard', :style => 'expressionist', :image => 'http://upload.wikimedia.org/wikipedia/en/f/f4/The_Scream.jpg')
Painting.create(:title => 'mona lisa', :year => '1503', :medium => 'oil on poplar', :style => 'sfumato', :image => 'http://upload.wikimedia.org/wikipedia/commons/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg')