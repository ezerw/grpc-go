FROM golang:alpine as build-env

ENV GO111MODULE=on

RUN apk update && apk add bash ca-certificates git gcc g++ libc-dev

RUN mkdir /server
RUN mkdir -p /server/proto 

WORKDIR /server

COPY ./proto/message_service.pb.go /server/proto
COPY ./server.go /server

COPY go.mod .
COPY go.sum .

RUN go mod download

RUN go build -o server .

CMD ./server