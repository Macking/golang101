FROM golang:1.13
MAINTAINER "macking"<macking@live.com>
WORKDIR /go/src/app
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 12345
CMD go run .