WingTsun.InfoController = Ember.Controller.extend
  infodata: (->
    result = []
    content = @get('content')
    result.push({ name: key, value: content[key] }) for key of content
    result
  ).property('content')
