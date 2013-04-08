window.App = Ember.Application.create()

App.Router.map ->
  this.resource 'about'
  this.resource 'faq'
  this.resource 'posts', ->
    this.resource 'post', {path: ':post_id'}

App.Store = DS.Store.extend
  revision: 12
