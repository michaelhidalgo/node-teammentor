require('fluentnode')

uuid = require('uuid')

class Guid
  constructor: (title, guid)->
    @raw   = guid || uuid.v4()
    @short = (if (title) then title + "-" else "") +  @raw.split('-').last()

module.exports = Guid