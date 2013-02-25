Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'Book 1', :cuisine => 'Cuisine 1', :chef => 'Chef 1', :image => 'http://www.foodiehq.com.au/wp-content/uploads/cookbooks_1.jpg')

r1 = Recipe.create(:name => 'Recipe 1', :course => 'Course 1', :cooktime => 1, :servingsize => 1, :instructions => 'Instructions 1', :image => 'http://cdn.sheknows.com/articles/crave/article_meals(1).jpg')
r2 = Recipe.create(:name => 'Recipe 2', :course => 'Course 2', :cooktime => 2, :servingsize => 2, :instructions => 'Instructions 2', :image => 'http://dontworrygethealthy.com/mealplanning/images/skewers.JPG')
r3 = Recipe.create(:name => 'Recipe 3', :course => 'Course 3', :cooktime => 3, :servingsize => 3, :instructions => 'Instructions 3', :image => 'http://www.commercetwp.com/sites/default/files/twp-meals_on_wheels.jpg')

i1 = Ingredient.create(:name => 'Ingredient 1', :measurement => 'Measurement 1', :cost => 1.11, :image => 'http://www.smallbiztechnology.com/wp-content/uploads/2012/11/Ingredients.jpg')
i2 = Ingredient.create(:name => 'Ingredient 2', :measurement => 'Measurement 2', :cost => 2.22, :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5d/Achiote_paste_ingredients.jpg')
i3 = Ingredient.create(:name => 'Ingredient 3', :measurement => 'Measurement 3', :cost => 3.33, :image => 'http://cdn.cpcstrategy.com/blog/wp-content/uploads/2012/07/ingredients.jpg')
i4 = Ingredient.create(:name => 'Ingredient 4', :measurement => 'Measurement 4', :cost => 4.44, :image => 'http://www.sync-blog.com/wp-content/uploads/2010/02/ingredients.jpg')
i5 = Ingredient.create(:name => 'Ingredient 5', :measurement => 'Measurement 5', :cost => 5.55, :image => 'http://www.smithtea.com/media/ingredients-landing.jpg')
i6 = Ingredient.create(:name => 'Ingredient 6', :measurement => 'Measurement 6', :cost => 6.66, :image => 'http://www.siliconcloud.com/Portals/55887/images/ingredients%20of%20inbound%20marketing.jpg')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i1, i2, i4]
r2.ingredients = [i1, i2, i4, i5, i6]
r3.ingredients = [i2, i3, i4]
