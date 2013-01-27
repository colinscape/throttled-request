#!/usr/bin/env coffee

trequest = require '../src/throttled-request'

urls = [
  'http://www.google.com/'
  'http://news.bbc.co.uk/'
  'http://www.bing.com/'
  'http://www.lycos.co.uk/'
]
trequest.requestMany urls, (err, response, body) ->
  console.log "#{response.request.host} : #{body.length}"
