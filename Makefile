.PHONY: help
help: ## Show this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@echo ""
	@echo "Docker commands:"
	@echo "  start-postgres  Start the postgres container"
	@echo "  start-mongo     Start the mongo container"
	@echo "  stop-postgres   Stop the postgres container"
	@echo "  stop-mongo      Stop the mongo container"
	@echo ""
	@echo "Utility commands:"
	@echo "  print           Print a hello message"
	@echo "  help            Show this help message"
	@echo ""


##@ Docker commands
.PHONY: start-postgres
start-postgres: ## Start the postgres container	
	docker compose -f docker-compose.postgres.yml up

.PHONY: start-mongo
start-mongo: ## Start the mongo container	
	docker compose -f docker-compose.mongo.yml up

.PHONY: stop-postgres
stop-postgres: ## Stop the postgres container
	docker compose -f docker-compose.postgres.yml down

.PHONY: stop-mongo
stop-mongo: ## Stop the mongo container
	docker compose -f docker-compose.mongo.yml down


##@ Utility commands
.PHONY: print
print: ## Print a hello message
	@echo "hello from Makefile"


##@ Development commands
.PHONY: generate-data-pg	
generate-data-pg: ## Generate data
	python3 data/generator/generate_products.py

.PHONY: generate-data-mongo
generate-data-mongo: ## Generate data
	python3 data/mongo-generator/generate_products_mongo.py

.PHONY: generate-data-tp2
generate-data-tp2: ## Generate data
	python3 data/tp2_generator/prescription_generator.py
