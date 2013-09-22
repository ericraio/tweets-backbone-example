describe 'TweetsBackboneExample.Views.Tweet', ->
  beforeEach ->
    @tweetView = new TweetsBackboneExample.Views.Tweet({
      el: $('<div></div>')
      model: new TweetsBackboneExample.Models.Tweet(body: 'tweet message')
    })

  describe 'render', ->
    it 'should return itself', ->
      expect(@tweetView.render()).toEqual(@tweetView)
    it 'should prepend the template', ->
      @tweetView.render()
      expect(@tweetView.$('p').first().text()).toBe('tweet message')
