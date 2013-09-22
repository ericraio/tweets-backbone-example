class TweetsBackboneExample.Views.TweetsIndex extends Backbone.View

  template: JST['tweets/index']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @prependTweet, this)
    @renderTweetsForm()

  renderTweetsForm: ->
    if @options.form
      @tweetsFormView = new TweetsBackboneExample.Views.TweetsForm({
        el: @options.form
        collection: @collection
      })

  prependTweet: (tweet) ->
    new TweetsBackboneExample.Views.Tweet({
      el: @$('.tweets')
      model: tweet
    })

  render: ->
    $(@el).html(@template())
    @collection.each(@prependTweet)
    this
