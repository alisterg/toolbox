# CURL

## Basic GET request

`curl http://example.com --output ./outputfile`

## Send a HEAD request to fetch response headers

`curl -I http://example.com`

## Show response headers with a GET and not a HEAD

`curl -sS -D - http://example.com -o /dev/nul`
