Armoire.DashboardRoute = Armoire.AuthenticatedRoute.extend
  model: (params, transition) ->
    $.getJSON('/api/redis')
