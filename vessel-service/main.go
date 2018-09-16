package main

import (
	"context"
	"errors"
	"log"
	"net"

	pb "github.com/shyam-unnithan/bingo/vessel-service/proto/vessel"
	grpc "google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

const (
	port = ":50051"
)

//IRepository - Interface for the repository
type IRepository interface {
	FindAvailable(*pb.Specification) (*pb.Vessel, error)
}

//Repository to store information regarding vessel
type Repository struct {
	vessels []*pb.Vessel
}

// FindAvailable ... Function to find available Vessel from information
func (repo *Repository) FindAvailable(spec *pb.Specification) (*pb.Vessel, error) {
	for _, vessel := range repo.vessels {
		if spec.Capacity <= vessel.Capacity && spec.MaxWeight <= vessel.MaxWeight {
			return vessel, nil
		}
	}
	return nil, errors.New("No vessel found by that spec")
}

type service struct {
	repo IRepository
}

func (s *service) FindAvailable(ctx context.Context, req *pb.Specification) (*pb.Response, error) {

	vessel, err := s.repo.FindAvailable(req)

	if err != nil {
		return nil, err
	}
	return &pb.Response{Vessel: vessel}, nil
}

func main() {
	vessels := []*pb.Vessel{
		&pb.Vessel{Id: "vessel001", Name: "Boaty McBoatface", MaxWeight: 200000, Capacity: 500},
	}
	repo := &Repository{vessels}

	lis, err := net.Listen("tcp", port)
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	s := grpc.NewServer()
	pb.RegisterVesselServiceServer(s, &service{repo})

	reflection.Register(s)
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}

}
