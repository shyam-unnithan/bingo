build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64	go build -a -installsuffix cgo -o vessel-cli .

run:
	docker run -e MICRO_REGISTRY=mdns vessel-cli

image:	build
	docker build -t vessel-cli .

clean:
	-rm -rf ./vessel-cli
	-docker rmi vessel-cli:latest
