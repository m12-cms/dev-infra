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
	$(DC) exec php sh

sh-nginx:
	$(DC) exec nginx sh

sh-postgres:
	$(DC) exec postgres sh

sh-redis:
	$(DC) exec redis sh
