# GPRC proof of concept using Go

[gRPC](http://www.grpc.io/) is a modern, [HTTP2](https://hpbn.co/http2/)-based protocol, that provides RPC semantics using the strongly-typed *binary* data format of [protocol buffers](https://developers.google.com/protocol-buffers/docs/overview) across multiple languages (C++, C#, Golang, Java, Python, NodeJS, ObjectiveC, etc.)

## Run

* Run the server with `docker-compose up`
* Open two extra terminals and run `cd client && go run client.go`

![Screenshot1](./screenshots/Screenshot_from_2020-01-14_15-34-31.png)

* Start sending messages on the client terminals:

![Screenshot2](./screenshots/Screenshot_from_2020-01-14_15-35-09.png)
