build:
	protoc -I. --go_out=plugins=micro:$(GOPATH)/src/github.com/shyam-unnithan/bingo/consignment-service \
	  proto/consignment/consignment.proto

	CGO_ENABLED=0 GOOS=linux GOARCH=amd64	go build -a -installsuffix cgo -o consignment-service .


run:
	docker run -p 50051:50051 -d \
        -e MICRO_SERVER_ADDRESS=:50051 \
        -e MICRO_REGISTRY=mdns consignment-service:latest

image: build
	docker build -t consignment-service .

clean:
	rm -rf consignment-service
	docker rmi consignment-service
