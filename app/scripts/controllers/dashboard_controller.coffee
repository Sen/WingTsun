WingTsun.DashboardController = Ember.ObjectController.extend
  info: (->
    for key, value of @get('model')
      { name: key, value: value }
  ).property('model')
