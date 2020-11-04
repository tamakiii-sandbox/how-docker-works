.PHONY: help setup dependencies build bash nsenter clean

NAME := tamakiii-sandbox/how-docker-works

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies

dependencies:
	@type docker > /dev/null

build: Dockerfile
	docker build -t $(NAME) .

bash: build
	docker run -it --rm --privileged -v $(PWD):/work -w /work $(NAME) $@

nsenter:
	docker run -it --rm --privileged --pid=host justincormack/nsenter1

clean:
	docker image rm $(NAME)
