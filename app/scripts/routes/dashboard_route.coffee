WingTsun.DashboardRoute = WingTsun.AuthenticatedRoute.extend
  model: (params) ->
    if params && params.type != 'all'
      $.getJSON('/api/info/' + params.type)
    else
      $.getJSON('/api/info')
