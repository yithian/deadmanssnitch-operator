include boilerplate/generated-includes.mk

.PHONY: boilerplate-update
boilerplate-update: ## Make boilerplate update itself
	@boilerplate/update

.PHONY: run
run: ## Run deadmanssnitch-operator locally
	OPERATOR_NAME="deadmanssnitch-operator" go run ./main.go

.PHONY: help
help: ## Show this help screen.
	@echo 'Usage: make <OPTIONS> ... <TARGETS>'
	@echo ''
	@echo 'Available targets are:'
	@echo ''
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | sed 's/##//g' | awk 'BEGIN {FS = ":"}; {printf "\033[36m%-30s\033[0m %s\n", $$2, $$3}'
