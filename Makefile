help:
	@echo "make proto to build protobuf"
	@echo "make servers to run server"
	@echo "make clients to run client"

proto:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative usermgmt/usrmgmt.proto

servers:
	go run server/usermgmt_server.go

clients:
	go run client/usermgmt_client.go
