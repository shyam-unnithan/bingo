build:
	protoc -I. --go_out=plugins=micro:$(GOPATH)/src/github.com/shyam-unnithan/bingo/vessel-service \
	  proto/vessel/vessel.proto

	CGO_ENABLED=0 GOOS=linux GOARCH=amd64	go build -a -installsuffix cgo -o vessel-service .

run:
	docker run -p 50052:50051 -d \
				-e MICRO_SERVER_ADDRESS=:50051 \
				-e MICRO_REGISTRY=mdns vessel-service:latest

image: build
	docker build -t vessel-service .

clean:
	rm -rf vessel-service
	docker rmi vessel-service
