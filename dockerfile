FROM golang:latest

WORKDIR /app

COPY . .

COPY go.mod .

CMD ["go", "run", "main.go"]

RUN go build -o main

EXPOSE 8000

RUN go mod download

LABEL version = "1.0"
LABEL Author = "sahar ahemd"
LABEL description = "Ascii Art Generator"
