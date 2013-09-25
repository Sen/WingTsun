Armoire.ConnectController = Ember.Controller.extend
  reset: ->
    @setProperties host: '', port: '', errorMessage: ''

  actions:
    connect: ->
      data = @getProperties('host', 'port')

      @set('errorMessage', null)

      $.post('/api/connect', data).then (response) =>
        if response.success()
          @reset()
          @transitionToRoute('dashboard')
      , (response) =>
        @set('errorMessage', response.responseJSON["error"])
