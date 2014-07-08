@Demo = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  App.on "initialize: after", ->

    Backbone.history.start() if Backbone.history

  App


