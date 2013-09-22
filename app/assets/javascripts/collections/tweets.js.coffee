class TweetsBackboneExample.Collections.Tweets extends Backbone.Collection

  url: '/api/tweets'

  model: TweetsBackboneExample.Models.Tweet
