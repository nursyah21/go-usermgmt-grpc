# GRPC with golang

## day1

Prequisites: <https://grpc.io/docs/languages/go/quickstart/#prerequisites>

Build a Unary Service Method

![img](/assets/unary-services.png)

generated protobug

```bash
protoc --go_out=usrmgmt --go-grpc_out=usrmgmt usrmgmt/usrmgmt.proto
```
