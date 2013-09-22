class TweetsBackboneExample.Routers.Tweets extends Backbone.Router
  routes:
    '(/)' : 'index'

  initialize: () ->
    @collection = new TweetsBackboneExample.Collections.Tweets()
    @collection.fetch()

  index: () ->
    @tweetsIndexView = new TweetsBackboneExample.Views.TweetsIndex({
      collection: @collection
      el: $('#container')
      form: $('#form')
    }).render()
