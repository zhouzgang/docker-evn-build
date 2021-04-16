.PHONY: all
all: help

SHELL:=/bin/bash



.PHONY: help
help:
	##############

.PHONY: network
network:
	docker network create -d bridge ecomb || true

.PHONY: mysql
mysql:
	docker-compose -f docker-compose-mysql.yml up --build -d