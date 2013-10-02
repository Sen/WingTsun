Armoire.DashboardRoute = Armoire.AuthenticatedRoute.extend
  model: ->
    $.getJSON('/api/redis')
