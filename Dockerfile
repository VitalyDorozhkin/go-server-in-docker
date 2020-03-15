FROM golang:1.14-alpine

WORKDIR /go/src/$BINARY_NAME
COPY ./cmd ./cmd
COPY ./vendor ./vendor

ARG BINARY_NAME
RUN go build -v \
    -o /out/service \
    ./cmd/$BINARY_NAME
CMD ["/out/service"]
