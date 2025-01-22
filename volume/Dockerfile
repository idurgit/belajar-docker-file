FROM golang:1.18-alpine

LABEL author="Rudi Supratman"
LABEL company="Idursoft"

ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir app
RUN mkdir ${APP_DATA}
COPY main.go app

EXPOSE ${APP_PORT}

VOLUME ${APP_DATA}

CMD ["go", "run", "app/main.go"]
