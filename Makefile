export GOPRIVATE = $(shell cat .go_private_repos | tr '\n' ',' | sed -e 's/,$$//')

fmt:
	@echo "Formatting sentinel..."
	sentinel fmt $(shell find . -name "*.sentinel" -type f)
	@echo "Formatting terraform..."
	terraform fmt -recursive .
	@echo "Done."
.PHONY: fmt

tests:
	@echo "Running sentinel tests..."
	sentinel test -verbose $(shell find . -name "*.sentinel" -type f ! -path "*/mocks/*" ! -path "*/example/*" ! -path "*/modules/*")
	@echo "Done."
.PHONY: tests

test:
ifeq ($(strip $(name)),)
	@echo flag needs an argument: name without the `.sentinel` extension
	@echo Usage: make test name=test-policy
else
	sentinel test -verbose $(shell find . -name "$(name).sentinel" -type f ! -path "*/mocks/*" ! -path "*/example/*" ! -path "*/modules/*")
endif
.PHONY: test

generate-policy:
ifeq ($(strip $(name)),)
	@echo flag needs an argument: name
	@echo Usage: make generate name=test-policy
else
	@mkdir -p policies
	@mkdir -p docs/policies
	@cp example/policy.sentinel policies/$(name).sentinel
	@mkdir -p policies/test
	@mkdir -p policies/test/$(name)
	@cp -r example/test/policy/* policies/test/$(name)
	@cp example/policy.md docs/policies/$(name).md
	@echo Policy written to policies/$(name)/$(name).sentinel
	@echo Done.
endif
.PHONY: generate-policy

go-private:
	@echo export GOPRIVATE="$(GOPRIVATE)"
.PHONY: go-private

modules:
	go mod download && go mod verify
.PHONY: modules