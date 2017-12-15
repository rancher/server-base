NS = rancher
VERSION = $(shell ./scripts/version)

REPO = server-base

.PHONY: build

build:
	docker build -t $(NS)/$(REPO):$(VERSION) .
	@echo Build $(NS)/$(REPO):$(VERSION) successfully

default: build
