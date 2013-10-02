WingTsun.ApplicationRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'dashboard'

WingTsun.AuthenticatedRoute = Ember.Route.extend
  actions:
    error: (reason, transition) ->
      if reason.status == 401
        @transitionTo 'connect'
