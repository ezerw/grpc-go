#!/bin/bash

# Generate code for Go
protoc \
    --proto_path=proto \
    --go_out=plugins=grpc:proto \
    message_service.proto
