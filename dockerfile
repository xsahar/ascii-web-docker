FROM golang:latest

LABEL version="1.0"
# Version of the application

LABEL Author="sahar ahemd"
# Author of the Dockerfile

LABEL description="Ascii Art Generator"
# Description of the application

WORKDIR /app

COPY . .
# Copy all files from the current directory to the /app directory in the container

COPY go.mod .
# Copy only the go.mod file to the /app directory

CMD ["go", "run", "main.go"]
# Command to run the application when the container starts

RUN go build -o main
# Build the application and output the executable as "main"

EXPOSE 8000
# Expose port 8000 for the application to listen on

RUN go mod download
# Download module dependencies specified in go.mod