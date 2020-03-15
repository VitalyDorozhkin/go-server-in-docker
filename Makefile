# Options.
#
BINARY_NAME_S=server
IMAGE_NAME_S=go-server
BINARY_NAME_C=client
IMAGE_NAME_C=go-client
# Targets.
#
build: Dockerfile
	# Building $(PROJECT_NAME)...
	docker build \
		--build-arg "BINARY_NAME=$(BINARY_NAME_S)" \
		-t $(IMAGE_NAME_S) .
	docker build \
    		--build-arg "BINARY_NAME=$(BINARY_NAME_C)" \
    		-t $(IMAGE_NAME_C) .
