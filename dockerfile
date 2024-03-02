FROM golang:latest

WORKDIR /app

COPY . /app

COPY go.mod .

CMD ["go", "run", "main.go"]

RUN go build -o main


