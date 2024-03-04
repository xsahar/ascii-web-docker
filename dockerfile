FROM golang:latest

LABEL version = "1.0"

LABEL Author = "sahar ahemd"

LABEL description = "Ascii Art Generator"

WORKDIR /app

COPY . .

COPY go.mod .

CMD ["go", "run", "main.go"]

RUN go build -o main

EXPOSE 8000

RUN go mod download


