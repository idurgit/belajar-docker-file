FROM golang:1.18-alpine

LABEL author="Rudi Supratman"
LABEL company="Idursoft"

ARG app=main

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go

EXPOSE 8080

ENV app=${app}

CMD go run app/${app}.go