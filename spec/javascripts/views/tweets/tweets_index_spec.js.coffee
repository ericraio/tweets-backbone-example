describe 'TweetsBackboneExample.Views.TweetsIndex', ->
  beforeEach ->
    @collection = new TweetsBackboneExample.Collections.Tweets()
    @tweetsIndexView = new TweetsBackboneExample.Views.TweetsIndex({
      el: $('<div><div class="tweets"></div></div>')
      collection: @collection
      form: $('<div id="form"></div>')
    })

  describe 'render', ->
    it 'should return itself', ->
      expect(@tweetsIndexView.render()).toEqual(@tweetsIndexView)
    it 'should render the html', ->
      @tweetsIndexView.render()
      expect(@tweetsIndexView.$('.tweets-index-container').html()).toEqual '<div class="tweets"></div>'

  describe 'prependTweet', ->
    it 'should initialize a new Tweet View', ->
      tweet = new TweetsBackboneExample.Models.Tweet()
      results = @tweetsIndexView.prependTweet(tweet)
      expect(results).toBe instanceof(TweetsBackboneExample.Views.Tweet)
      expect(results.model).toBe tweet
      expect(results.el).toBe @tweetsIndexView.$('.tweets')

  describe 'renderTweetsForm', ->
    it 'should initialize a TweetsForm if @options.form is set', ->
      expect(@tweetsIndexView.renderTweetsForm).toBe instanceof(TweetsBackboneExample.Views.TweetsForm)
      expect(@tweetsIndexView.tweetsFormView).toBeDefined
      expect(@tweetsIndexView.tweetsFormView.el).toBe @tweetsIndexView.options.form
      expect(@tweetsIndexView.tweetsFormView.collection).toBe @collection
    it 'should not initialize a TweetsForm if @options.form is not set', ->
      @tweetsIndexView.form = undefined
      expect(@tweetsIndexView.renderTweetsForm).toNotBe instanceof(TweetsBackboneExample.Views.TweetsForm)
