WingTsun.InfoRoute = WingTsun.AuthenticatedRoute.extend
  model: ->
    $.getJSON('/api/redis')
