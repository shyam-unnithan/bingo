build:
	protoc -I. --go_out=plugins=grpc:$(GOPATH)/src/github.com/shyam-unnithan/bingo/vessel-service \
	  proto/vessel/vessel.proto

	CGO_ENABLED=0 GOOS=linux GOARCH=amd64	go build -a -installsuffix cgo -o vessel-service .

run:
	docker run -p 50052:50051 -d \
				vessel-service:latest

image: build
	docker build -t vessel-service .

clean:
	-rm -rf vessel-service
	-docker rmi vessel-service
