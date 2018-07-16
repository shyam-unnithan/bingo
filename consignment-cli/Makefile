build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64	go build -a -installsuffix cgo -o consignment-cli .
	docker build -t consignment-cli .

run:
	docker run -e MICRO_REGISTRY=mdns consignment-cli
