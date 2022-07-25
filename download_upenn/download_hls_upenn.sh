#!/bin/bash

manifest=$1
filename=$2

ffmpeg \
  -headers 'Connection: keep-alive' \
  -headers 'sec-ch-ua: "Google Chrome";v="95", "Chromium";v="95", ";Not A Brand";v="99"' \
  -headers 'sec-ch-ua-mobile: ?0' \
  -headers 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36' \
  -headers 'sec-ch-ua-platform: "macOS"' \
  -headers 'Accept: */*' \
  -headers 'Origin: https://upenn.hosted.panopto.com' \
  -headers 'Sec-Fetch-Site: cross-site' \
  -headers 'Sec-Fetch-Mode: cors' \
  -headers 'Sec-Fetch-Dest: empty' \
  -headers 'Referer: https://upenn.hosted.panopto.com/' \
  -headers 'Accept-Language: en-US,en;q=0.9' \
  -i "${manifest}" \
  -vsync 0 \
  -c copy -bsf:a aac_adtstoasc \
  "${filename}"