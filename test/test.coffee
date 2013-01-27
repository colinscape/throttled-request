#!/usr/bin/env coffee

request = require './throttled-request'

urls = [
  'http://www.google.com/'
  'http://news.bbc.co.uk/'
  'http://www.bing.com/'
  'http://www.lycos.co.uk/'
]

request.requestMany urls, (err, resp, body) ->
  console.log resp.request.uri.hostname
