package main

import (
	"context"
	"log"

	microclient "github.com/micro/go-micro/client"
	"github.com/micro/go-micro/cmd"
	vesselProto "github.com/shyam-unnithan/bingo/vessel-service/proto/vessel"
)

const (
	address         = "vessel-bingo.192.168.64.2.nip.io"
	defaultFilename = "consignment.json"
)

func main() {
	cmd.Init()
	vesselClient := vesselProto.NewVesselServiceClient("bingo.svc.vessel", microclient.DefaultClient)
	vesselResponse, err := vesselClient.FindAvailable(context.Background(), &vesselProto.Specification{
		MaxWeight: 25,
		Capacity:  35})
	if err != nil {
		log.Println(err)
	}
	log.Println(vesselResponse)
}
