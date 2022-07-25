#!/bin/bash

# Usage:
#    $ ./dcheckride.sh <manifest_link> <output_path>

# Example:
#    $ ./dcheckride.sh https://vz-d367db7b-ed6.b-cdn.net/ea6f17f4-0314-48f7-920d-d8c59eb43d56/1920x1080/video.m3u8 ~/Downloads/out.mp4

# This script uses the headers that Google Chrome uses to GET
#    https://iframe.mediadelivery.net/embed/49269/ea6f17f4-0314-48f7-920d-d8c59eb43d56?autoplay=true
# which can be copied with "Copy as cURL" in Chrome DevTools

MANIFEST=$1
OUT_PATH=$2

HEADERS=$'authority: iframe.mediadelivery.net\r\n'\
$'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\r\n'\
$'accept-language: en-US,en;q=0.9\r\n'\
$'referer: https://portal.checkrideprep.com/\r\n'\
$'sec-ch-ua: ".Not/A)Brand";v="99", "Google Chrome";v="103", "Chromium";v="103"\r\n'\
$'sec-ch-ua-mobile: ?0\r\n'\
$'sec-ch-ua-platform: "macOS"\r\n'\
$'sec-fetch-dest: iframe\r\n'\
$'sec-fetch-mode: navigate\r\n'\
$'sec-fetch-site: cross-site\r\n'\
$'upgrade-insecure-requests: 1\r\n'
USER_AGENT=$'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36' # don't add user-agent tag or CRLF here

ffmpeg \
  -headers "$HEADERS" \
  -user_agent "$USER_AGENT" \
  -i "$MANIFEST" \
  "$OUT_PATH"
