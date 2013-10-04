WingTsun.ApplicationRoute = Ember.Route.extend()

WingTsun.AuthenticatedRoute = Ember.Route.extend
  actions:
    error: (reason, transition) ->
      if reason.status == 401
        @transitionTo 'connect'
