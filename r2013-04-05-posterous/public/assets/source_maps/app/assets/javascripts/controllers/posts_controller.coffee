App.PostsController = Ember.ObjectController.extend
  delete: ->
    @removeObject(post)
    post.deleteRecord()
    @get('store').commit()
    @transitionToRoute('posts.index')
