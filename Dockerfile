FROM golang:1.22.2-alpine3.19

ENV CGO_ENABLED=0

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o indexer .

CMD ["./indexer"]
