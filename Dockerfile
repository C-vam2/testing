FROM golang:1.27

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .
RUN go build -v -o cvam .
CMD [ "./cvam" ]
