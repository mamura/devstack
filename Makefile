SHELL := /bin/bash

COMPOSE_FILE=infra/compose.yaml

.PHONY: help init setup bootstrap up down logs restart ps

help:
	@echo ""
	@echo "Available commands:"
	@echo "  make init       - Full first-time setup (setup + bootstrap + up)"
	@echo "  make setup      - Copy .env.example to .env if needed"
	@echo "  make bootstrap  - Prepare environment (create Docker network)"
	@echo "  make up         - Start the stack"
	@echo "  make down       - Stop the stack"
	@echo "  make logs       - Show container logs"
	@echo "  make restart    - Restart the stack"
	@echo "  make ps         - List running containers"
	@echo ""

## First-time setup
init: setup bootstrap up

## Create .env if not exists
setup:
	@if [ ! -f .env ]; then \
		cp .env.example .env; \
		echo ".env created from .env.example"; \
	else \
		echo ".env already exists"; \
	fi

## Prepare environment
bootstrap:
	@chmod +x ./infra/scripts/bootstrap.sh
	@./infra/scripts/bootstrap.sh

## Start containers
up:
	@docker compose -f $(COMPOSE_FILE) up -d

## Stop containers
down:
	@docker compose -f $(COMPOSE_FILE) down

## Logs
logs:
	@docker compose -f $(COMPOSE_FILE) logs -f

## Restart stack
restart:
	@docker compose -f $(COMPOSE_FILE) down
	@docker compose -f $(COMPOSE_FILE) up -d

## List containers
ps:
	@docker compose -f $(COMPOSE_FILE) ps