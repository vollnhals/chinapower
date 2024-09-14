#!/usr/bin/env bash

# use Wechselrichter, network 1
wpa_cli -i wlan0 set_network 0 priority 0
wpa_cli -i wlan0 set_network 1 priority 2
wpa_cli -i wlan0 reassociate

curl -u admin:admin 10.10.100.254/status.html | grep -E "^var .* = .*;" | sed 's/^var //' | sed 's/ = /: /' | sed 's/;/,/' | sed '$s/,//' | sed '1s/^/{\n/' | sed '$s/$/\n}/' | sed -E 's/^([^:]+):/"\1":/g' > /tmp/powerdata

# use fritzbox, network 0
wpa_cli -i wlan0 set_network 0 priority 2
wpa_cli -i wlan0 set_network 1 priority 0
wpa_cli -i wlan0 reassociate

curl -v -H 'Content-Type: application/json' --data-binary /tmp/powerdata chinapower.fly.dev/data
