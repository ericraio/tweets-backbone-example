describe 'TweetsBackboneExample.Router.Tweets', ->
  beforeEach ->
    $('body').append('<div id="container"></div>')
    $('body').append('<div id="form"></div>')
    @router = new TweetsBackboneExample.Routers.Tweets()

  describe 'routes', ->
    it 'routes "(/)" to index', ->
      expect(@router.routes['(/)']).toBe 'index'

  describe 'initialize', ->
    it 'initializes a TweetsBackboneExample.Collections.Tweets object', ->
      @router.initialize()
      expect(@router.collection).toBe instanceof(TweetsBackboneExample.Collections.Tweets)

  describe 'index', ->
    it 'initializes a TweetsBackboneExample.Views.TweetsIndex view object', ->
      @router.index()
      expect(@router.tweetsIndexView).toBe instanceof(TweetsBackboneExample.Views.TweetsIndex)
      expect(@router.tweetsIndexView.collection).toBe(@router.collection)
      expect(@router.tweetsIndexView.$el).toBe $('#container')
      expect(@router.tweetsIndexView.options.form).toBe $('#form')
