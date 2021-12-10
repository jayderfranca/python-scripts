PREFIX ?= /usr/local
GROUP=$(shell id -gn $(USER))

ifneq ($(USER),root)
	PREFIX=~/.local
endif

install:
	install -D -v portainer -o $(USER) -g $(GROUP) -m 0755 -t $(PREFIX)/bin
	install -D -v certbot -o $(USER) -g $(GROUP) -m 0755 -t $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/portainer
	rm -f $(PREFIX)/bin/certbot
