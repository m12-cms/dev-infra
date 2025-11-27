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

sh-php:
	$(DC) exec php bash

sh-nginx:
	$(DC) exec nginx bash

sh-postgres:
	$(DC) exec postgres bash

sh-redis:
	$(DC) exec redis bash

psql:
	$(DC) exec postgres psql -U $(POSTGRES_USER) -d $(POSTGRES_DB)