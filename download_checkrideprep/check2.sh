#!/bin/bash

# This script uses the headers that Google Chrome uses to GET
#    https://iframe.mediadelivery.net/embed/49269/ea6f17f4-0314-48f7-920d-d8c59eb43d56?autoplay=true
# which can be copied with "Copy as cURL" in Chrome DevTools

MANIFEST=$1
curl $MANIFEST \
  -H 'authority: iframe.mediadelivery.net' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'referer: https://portal.checkrideprep.com/' \
  -H 'sec-ch-ua: ".Not/A)Brand";v="99", "Google Chrome";v="103", "Chromium";v="103"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: iframe' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: cross-site' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36' \
  --compressed
