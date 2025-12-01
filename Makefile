SHELL := /bin/bash

include .env

# Docker compose wrapper
DC=docker compose

up:
	$(DC) up -d

down:
	$(DC) down

restart:
	$(DC) down && $(DC) up -d

build:
	$(DC) build

logs:
	$(DC) logs -f

ps:
	$(DC) ps

admin:
	$(DC) exec admin bash

www:
	$(DC) exec www bash

nginx:
	$(DC) exec nginx bash

postgres:
	$(DC) exec postgres bash

redis:
	$(DC) exec redis bash

psql:
	$(DC) exec postgres psql -U $(POSTGRES_USER) -d $(POSTGRES_DB)

pint-admin:
	$(DC) exec admin composer pint

pint-www:
	$(DC) exec www composer pint

analyse-admin:
	$(DC) exec admin composer stan

analyse-www:
	$(DC) exec www composer stan

check-admin:
	$(DC) exec admin composer pint
	$(DC) exec admin composer stan

test-admin:
	$(DC) exec admin ./artisan test
