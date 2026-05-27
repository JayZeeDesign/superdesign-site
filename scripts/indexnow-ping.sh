#!/usr/bin/env bash
# Submit our URLs to IndexNow (Bing / Yandex / Naver / Seznam).
# Bing accepts IndexNow submissions without a Webmaster Tools account.
# See https://www.indexnow.org/documentation
#
# Usage:  scripts/indexnow-ping.sh
# Add or remove URLs in the JSON body below as the sitemap grows.

set -euo pipefail

HOST="jayzeedesign.github.io"
KEY="5bdc3cf653e9a956f932ad416367e882"
KEY_LOCATION="https://${HOST}/superdesign-site/${KEY}.txt"

read -r -d '' BODY <<JSON || true
{
  "host": "${HOST}",
  "key": "${KEY}",
  "keyLocation": "${KEY_LOCATION}",
  "urlList": [
    "https://jayzeedesign.github.io/superdesign-site/",
    "https://jayzeedesign.github.io/superdesign-site/ai-agents/",
    "https://jayzeedesign.github.io/superdesign-site/build-with-llms/"
  ]
}
JSON

curl -sS -w "\nHTTP %{http_code}\n" \
  -X POST "https://api.indexnow.org/IndexNow" \
  -H "Content-Type: application/json; charset=utf-8" \
  -d "${BODY}"
