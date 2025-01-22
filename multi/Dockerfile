FROM golang:1.18-alpine as builder

LABEL author="Rudi Supratman"
LABEL company="Idursoft"

WORKDIR /app/
COPY main.go /app/
RUN go build -o /app/main /app/main.go

FROM alpine:3
WORKDIR /app/
COPY --from=builder /app/main /app/
CMD ["/app/main"]