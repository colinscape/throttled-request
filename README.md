# throttled-request -- Request but throttled

## Installation

Using npm:

<pre>
  npm install throttled-request
</pre>

Or from source:

<pre>
  git clone git://github.com/colinscape/throttled-request.git 
  cd throttled-request
  npm link
</pre>

## Super simple to use

<pre>
  trequest = require 'throttled-request'

  urls = [
    'http://www.google.com/'
    'http://news.bbc.co.uk/'
    'http://www.bing.com/'
    'http://www.lycos.co.uk/'
  ]
  trequest.requestMany urls, (err, response, body) ->
    console.log "#{response.url} : #{body.length}"
</pre>

Or, as JavaScript:

<pre>
  var trequest = require('throttled-request')

  urls = [
    'http://www.google.com/',
    'http://news.bbc.co.uk/',
    'http://www.bing.com/',
    'http://www.lycos.co.uk/'
  ]
  trequest.requestMany(urls, function(err, response, body) {
    console.log(response.url + ' : ' + body.length);
  });
</pre>
