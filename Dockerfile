FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/synergy_api_server
COPY . $GOPATH/src/synergy_api_server
RUN go build .

EXPOSE 8080
ENTRYPOINT ["./synergy_api_server"]