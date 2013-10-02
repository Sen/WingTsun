WingTsun.DashboardController = Ember.Controller.extend
  infodata: (->
    for key, value of @get('content')
      { name: key, value: value }
  ).property('content')
