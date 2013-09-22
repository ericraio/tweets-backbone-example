describe 'TweetsBackboneExample.Views.TweetsForm', ->
  beforeEach ->
    @collection = new TweetsBackboneExample.Collections.Tweets()
    @tweetsFormView = new TweetsBackboneExample.Views.TweetsForm({
      el: $('<div id="form"></div>')
      collection: @collection
    })

  describe 'events', ->
    it 'maps "click [data-tweet-submit]" to "createTweet"', ->
      expect(@tweetsFormView.events['click [data-tweet-submit]']).toEqual('createTweet')

  describe 'createTweet(event)', ->
    beforeEach ->
      @tweetsFormView.$('[data-tweet-body]').val('tweet message')
      @event = new jQuery.Event('click')
      spyOn(@event, 'preventDefault')

    it 'prevents the default event behavior', ->
      @tweetsFormView.createTweet(@event)
      expect(@event.preventDefault).toHaveBeenCalled()
    it 'creates a new model in the collection', ->
      expect(@collection.models.length).toBe(0)
      @tweetsFormView.createTweet(@event)
      expect(@collection.models.length).toBe(1)
      expect(@collection.models[0].get('body')).toBe('tweet message')

  describe 'render', ->
    it 'returns itself', ->
      expect(@tweetsFormView.render()).toEqual(@tweetsFormView)
    it 'inserts the template on @el', ->
      @tweetsFormView.render()
      expect(@tweetsFormView.$el.html()).toEqual(@tweetsFormView.template())


