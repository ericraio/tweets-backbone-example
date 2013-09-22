describe 'TweetsBackboneExample.Collections.Tweets', ->
  beforeEach ->
    @tweetsCollection = new TweetsBackboneExample.Collections.Tweets()

  describe 'url', ->
    it 'should set the correct collection url', ->
      expect(@tweetsCollection.url).toBe('/api/tweets')

  describe 'model', ->
    it 'should set the correct model', ->
      expect(@tweetsCollection.model).toBe(TweetsBackboneExample.Models.Tweet)

