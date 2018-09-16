
all:
	$(MAKE) -C consignment-cli build
	$(MAKE) -C consignment-service build
	$(MAKE) -C vessel-service build
	docker-compose build

cli: consignment
	$(MAKE) -C consignment-cli clean build image

consignment:
	$(MAKE) -C consignment-service clean build image

vessel:
	$(MAKE) -C vessel-service clean build image

run:
	$(MAKE) -C vessel-service run
	$(MAKE) -C consignment-service run
	$(MAKE) -C consignment-cli run

k8s: cli consignment vessel
	docker tag consignment-service:latest docker-registry-default.192.168.64.2.nip.io/bingo/consignment-service:latest
	docker tag vessel-service:latest docker-registry-default.192.168.64.2.nip.io/bingo/vessel-service:latest
	docker tag consignment-cli:latest docker-registry-default.192.168.64.2.nip.io/bingo/consignment-cli:latest
