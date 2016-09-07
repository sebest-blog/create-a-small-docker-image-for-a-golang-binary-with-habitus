FROM golang:1.6

WORKDIR /work

COPY main.go /work

RUN tar cfz zoneinfo.tar.gz /usr/share/zoneinfo

RUN CGO_ENABLED=0 go build -o main /work/main.go
