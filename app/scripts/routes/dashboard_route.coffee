WingTsun.DashboardBaseRoute = WingTsun.AuthenticatedRoute.extend
  model: ->
    type = @routeName.split('.')[1]

    if type == 'index'
      $.getJSON('/api/redis')
    else
      $.getJSON('/api/redis/' + type)

WingTsun.DashboardIndexRoute       = WingTsun.DashboardBaseRoute.extend()
WingTsun.DashboardServerRoute      = WingTsun.DashboardBaseRoute.extend()
WingTsun.DashboardClientsRoute     = WingTsun.DashboardBaseRoute.extend()
WingTsun.DashboardMemoryRoute      = WingTsun.DashboardBaseRoute.extend()
WingTsun.DashboardPersistenceRoute = WingTsun.DashboardBaseRoute.extend()
WingTsun.DashboardStatsRoute       = WingTsun.DashboardBaseRoute.extend()
WingTsun.DashboardReplicationRoute = WingTsun.DashboardBaseRoute.extend()
WingTsun.DashboardCpuRoute         = WingTsun.DashboardBaseRoute.extend()
WingTsun.DashboardKeyspaceRoute    = WingTsun.DashboardBaseRoute.extend()
