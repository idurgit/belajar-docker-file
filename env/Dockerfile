FROM golang:1.18-alpine

LABEL author="Rudi Supratman"
LABEL company="Idursoft"

ENV APP_PORT=8080

RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}

CMD ["go", "run", "app/main.go"]
