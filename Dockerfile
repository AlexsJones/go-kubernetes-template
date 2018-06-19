FROM golang:1.10

ARG PROJECTNAME="NOTSET"

COPY . .
RUN go get -u github.com/golang/dep/cmd/dep && dep ensure &&\
    GOOS=linux go build -ldflags="-s -w" -o /usr/bin/${PROJECTNAME} && \
    rm -rf ${GOPATH}
