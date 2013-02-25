Author.delete_all
Book.delete_all

Author.create(:name => 'George Saunders', :nationality => 'American', :dob => '1958-12-02', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/George_Saunders_by_David_Shankbone.jpg/264px-George_Saunders_by_David_Shankbone.jpg')
Author.create(:name => 'Kurt Vonnegut', :nationality => 'American', :dob => '1922-11-11', :image => 'http://upload.wikimedia.org/wikipedia/en/c/c8/Kurt_Vonnegut_at_CWRU.jpg')
Author.create(:name => 'Joseph Heller', :nationality => 'American', :dob => '1923-05-01', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Joseph_heller_1986.jpg/320px-Joseph_heller_1986.jpg')

Book.create(:title => 'CivilWarLand in Bad Decline', :description =>"CivilWarLand in Bad Decline is short story writer George Saunders first full length short story collection.", :isbn => '1-57322-579-7', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/a/a9/Civilwarland.jpg/152px-Civilwarland.jpg')
Book.create(:title => "Cat's Cradle", :description => "Cat's Cradle is the fourth novel by American writer Kurt Vonnegut, first published in 1963.", :isbn => '0-385-33348-X', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e6/CatsCradle%281963%29.jpg/162px-CatsCradle%281963%29.jpg')
Book.create(:title => 'Catch-22', :description => 'Catch-22 is a satirical and somewhat historical novel by the American author Joseph Heller.', :isbn => '0-684-83339-5', :image => 'http://upload.wikimedia.org/wikipedia/en/9/99/Catch22.jpg')