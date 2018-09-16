build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64	go build -a -installsuffix cgo -o consignment-cli .

run:
	docker run consignment-cli

image:	build
	docker build -t consignment-cli .

clean:
	-rm -rf ./consignment-cli
	-docker rmi consignment-cli:latest
