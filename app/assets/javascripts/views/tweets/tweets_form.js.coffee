class TweetsBackboneExample.Views.TweetsForm extends Backbone.View

  initialize: ->
    @render()

  template: JST['tweets/form']

  events:
    'click [data-tweet-submit]' : 'createTweet'

  createTweet: (event) ->
    event.preventDefault()
    @collection.create body: @$('[data-tweet-body]').val()

  render: ->
    $(@el).html(@template())
    this
