window.TweetsBackboneExample =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new TweetsBackboneExample.Routers.Tweets()
    Backbone.history.start()

jQuery ->
  TweetsBackboneExample.initialize()
