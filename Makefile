# Makefile for docker-nginx

IMAGE=ghcr.io/mitchallen/docker-nginx
CONTAINER=test-nginx
PORT=3000:80

.PHONY: build tag push run start stop rm cleanup help

build:
	docker build . -t $(IMAGE):latest

tag:
	git tag $(TAG)
	git push origin --tags

push:
	docker push $(IMAGE):latest

run:
	docker run -p $(PORT) --name $(CONTAINER) $(IMAGE)

start:
	docker start $(CONTAINER)

stop:
	docker stop $(CONTAINER)

rm:
	docker rm $(CONTAINER)

cleanup: stop rm

publish:
	@version=$$(date +%Y%m%d%H%M%S); \
	git tag v$$version; \
	git push origin v$$version

help:
	@echo "Usage: make <target>"
	@echo "Targets:"
	@echo "  build     Build the Docker image"
	@echo "  tag       Tag the repo (use: make tag TAG=v1.0.0)"
	@echo "  push      Push the Docker image"
	@echo "  run       Run the Docker container"
	@echo "  start     Start the container"
	@echo "  stop      Stop the container"
	@echo "  rm        Remove the container"
	@echo "  cleanup   Stop and remove the container"
	@echo "  publish   Increment patch version, tag, and push (triggers workflow)"
	@echo "  help      Show this help message"

.DEFAULT_GOAL := help
