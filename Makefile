
all:
	$(MAKE) -C consignment-cli build
	$(MAKE) -C consignment-service build
	$(MAKE) -C vessel-service build
	docker-compose build

cli:
	$(MAKE) -C consignment-cli clean build image

consignment:
	$(MAKE) -C consignment-service clean build image

vessel:
	$(MAKE) -C vessel-service clean build

run:
	$(MAKE) -C vessel-service run
	$(MAKE) -C consignment-service run
	$(MAKE) -C consignment-cli run
