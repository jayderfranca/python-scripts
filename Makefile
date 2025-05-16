PREFIX ?= /usr/local
GROUP=$(shell id -gn $(USER))

ifneq ($(USER),root)
	PREFIX=~/.local
endif


portainer-install:
	install -D -v portainer -o $(USER) -g $(GROUP) -m 0755 -t $(PREFIX)/bin

portainer-uninstall:
	rm -f $(PREFIX)/bin/portainer

certbot-install:
	install -D -v certbot -o $(USER) -g $(GROUP) -m 0755 -t $(PREFIX)/bin

certbot-uninstall:
	rm -f $(PREFIX)/bin/certbot

wiremock-install:
	install -D -v wiremock -o $(USER) -g $(GROUP) -m 0755 -t $(PREFIX)/bin

wiremock-uninstall:
	rm -f $(PREFIX)/bin/wiremock

install: portainer-install certbot-install wiremock-install

uninstall: portainer-uninstall certbot-uninstall wiremock-uninstall

