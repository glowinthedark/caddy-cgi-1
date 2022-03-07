run:
	(./caddy run --config Caddyfile.v2 & \
	 fcgiwrap -f -s tcp:127.0.0.1:8999)
browse:
	sleep 1 && xdg-open 'http://localhost:8081/cgi-bin/test.pl' &
.PHONY: browse run
