#!/usr/bin/env bash
curl -u admin:admin 10.10.100.254/status.html | grep -E "^var .* = .*;" | sed 's/^var //' | sed 's/ = /: /' | sed 's/;/,/' | sed '$s/,//' | sed '1s/^/{\n/' | sed '$s/$/\n}/' | sed -E 's/^([^:]+):/"\1":/g' | curl -v -H 'Content-Type: application/json' --data-binary @- localhost:3001/data
