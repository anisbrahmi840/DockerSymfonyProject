include .env

.PHONY: help @docker-compose control

default: help

restart:
		@echo "$(COLOR_LIGHT_GREEN)Restarting containers for $(PROJECT_NAME)...$(COLOR_NC)"
		@docker-compose stop
		@docker-compose up -d

start: ## Start containers.
	@echo "$(COLOR_LIGHT_GREEN)Starting up containers for $(PROJECT_NAME)...$(COLOR_NC)"
	@ docker-compose up -d

build: ## Build containers.
	@echo "$(COLOR_LIGHT_GREEN)Building up containers for $(PROJECT_NAME)...$(COLOR_NC)"
	@docker-compose up --build


php-shell: ## make resource
	@docker-compose exec php /bin/bash
