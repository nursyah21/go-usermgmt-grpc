# GRPC with golang

## day1

Prequisites: <https://grpc.io/docs/languages/go/quickstart/#prerequisites>

other tutorials:

- <https://protobuf.dev/getting-started/>
- <https://github.com/grpc/grpc-go/tree/master/examples>

Build a Unary Service Method

![img](/assets/unary-services.png)

generated protobuf

```bash
protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative usrmgmt/usrmgmt.proto
```

create repository in github to place code and run

```bash
go mod tidy
```

to download module
