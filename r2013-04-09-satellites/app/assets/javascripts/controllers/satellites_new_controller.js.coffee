App.SatellitesShowController = Ember.ObjectController.extend
  needs: ['planetsShow']
  cancel: ->
    @get('controller').get('planetsShow').set('isNew', false)
    @transitionToRoute('planets.index')
  save: ->
    satellite = @get('content')
    @get('controller').get('planetsShow').get('satellites').pushObject(satellite)
    @get('controller').get('planetsShow').set('isNew', false)
    @get('store').commit()
    @transitionToRoute('planets.index')