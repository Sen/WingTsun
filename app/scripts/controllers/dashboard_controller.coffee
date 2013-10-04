WingTsun.DashboardBaseController = Ember.ObjectController.extend
  infodata: (->
    for key, value of @get('model')
      { name: key, value: value }
  ).property('model')

WingTsun.DashboardIndexController       = WingTsun.DashboardBaseController.extend()
WingTsun.DashboardServerController      = WingTsun.DashboardBaseController.extend()
WingTsun.DashboardClientsController     = WingTsun.DashboardBaseController.extend()
WingTsun.DashboardMemoryController      = WingTsun.DashboardBaseController.extend()
WingTsun.DashboardPersistenceController = WingTsun.DashboardBaseController.extend()
WingTsun.DashboardStatsController       = WingTsun.DashboardBaseController.extend()
WingTsun.DashboardReplicationController = WingTsun.DashboardBaseController.extend()
WingTsun.DashboardCpuController         = WingTsun.DashboardBaseController.extend()
WingTsun.DashboardKeyspaceController    = WingTsun.DashboardBaseController.extend()
