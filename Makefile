.PHONY: help
help: ## Show this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@echo ""
	@echo "Docker commands:"
	@echo "  start         Start the Docker containers"
	@echo "  stop          Stop the Docker containers"
	@echo ""
	@echo "Utility commands:"
	@echo "  print         Print a hello message"
	@echo "  help          Show this help message"


##@ Docker commands
.PHONY: start
start: 
	docker compose up

.PHONY: stop
stop: ## Stop the docker containers
	docker compose down


##@ Utility commands
.PHONY: print
print: ## Print a hello message
	@echo "hello from Makefile"


##@ Development commands
.PHONY: generate-data
generate-data: ## Generate data
	python3 data/generator/generate_products.py
