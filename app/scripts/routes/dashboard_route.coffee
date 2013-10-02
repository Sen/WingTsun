WingTsun.DashboardRoute = WingTsun.AuthenticatedRoute.extend
  model: ->
    $.getJSON('/api/redis')
