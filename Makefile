DOCKER       = docker
HUGO_VERSION = 0.49
DOCKER_IMAGE = k8-hugo
DOCKER_RUN   = $(DOCKER) run --rm --interactive --tty --volume $(PWD):/src

.PHONY: all build build-preview serve docker-all

all: build ## Build site with production settings

build: ## Build site with production settings
	hugo

build-preview: ## Build site with drafts and future posts enabled
	hugo -D -F

production-build: build

non-production-build: ## Build the non-production site, which adds noindex headers to prevent indexing
	hugo --enableGitInfo

serve: ## Boot the development server.
	hugo server --ignoreCache --disableFastRender

docker-all: docker-image docker-build docker-serve

docker-image:
	$(DOCKER) build . --tag $(DOCKER_IMAGE) --build-arg HUGO_VERSION=$(HUGO_VERSION)

docker-build:
	$(DOCKER_RUN) $(DOCKER_IMAGE) hugo

docker-serve:
	$(DOCKER_RUN) -p 1313:1313 $(DOCKER_IMAGE) hugo server --watch --bind 0.0.0.0
