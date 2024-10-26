#!/bin/bash

# Use curl to get the HTTP status code for guvi.in
status_code=$(curl -o /dev/null -s -w "%{http_code}" https://www.guvi.in)

# Print the status code
echo "HTTP Status Code: $status_code"

# Check if status code is 200 (OK)
if [ "$status_code" -eq 200 ]; then
    echo "Success: Website is accessible."
else
    echo "Failure: Website returned error code $status_code."
fi
