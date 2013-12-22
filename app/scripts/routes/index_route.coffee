WingTsun.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'dashboard', 'all'
