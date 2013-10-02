describe "Index page", ->
    it "displays a welcome message", ->
        visit('/').then ->
            find('div.well').text().should.contain 'Welcome to Yeoman and Ember.js'

describe "ApplicationRoute", ->
    describe "model property", ->
        applicationRoute = WingTsun.ApplicationRoute.create()

        it "should have the right number of items", ->
            model = applicationRoute.model()
            model.should.have.length 3
