request = require 'request'


performRequest = (urls, cb) ->
  url = urls.shift()
  if url? then request.get url, cb

requestMany = (urls, cb) ->

  urls = urls.slice()
  performRequest urls, (err, resp, body) ->
    cb err, resp, body
    requestMany urls, cb
      

module.exports = {requestMany}
