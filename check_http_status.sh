#!/bin/bash
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" http://guvi.in)

echo "HTTP Status Code: $STATUS_CODE"

if [ "$STATUS_CODE" -eq 200 ]; then
  echo "Success: Website is accessible."
else
  echo "Failure: Website returned an error code."
fi
