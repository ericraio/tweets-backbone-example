class TweetsBackboneExample.Views.Tweet extends Backbone.View

  initialize: ->
    @render()

  template: JST['tweets/tweet']

  render: ->
    $(@el).prepend(@template(tweet: @model))
    this
