
FROM golang:1.19-alpine3.15

#LABEL maintainer="deepak"

WORKDIR /app

COPY go.mod go.sum  ./

RUN go mod download

COPY . .

RUN go build -o main .

EXPOSE 8080

CMD ["./main"]
