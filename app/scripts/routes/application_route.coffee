Armoire.ApplicationRoute = Ember.Route.extend()

Armoire.AuthenticatedRoute = Ember.Route.extend
  actions:
    error: (reason, transition) ->
      if reason.status == 401
        @transitionTo 'connect'
