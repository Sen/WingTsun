WingTsun.Router.map ->
  @route 'connect'

  @resource 'dashboard', ->
    @route 'server'
    @route 'clients'
    @route 'memory'
    @route 'persistence'
    @route 'stats'
    @route 'replication'
    @route 'cpu'
    @route 'keyspace'
