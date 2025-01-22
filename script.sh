#FROM Instructions
docker build -t idursupra/from from

docker image ls

#RUN Instructions
docker build -t idursupra/run run

#CMD Instructions
docker build -t idursupra/command command

docker image inspect idursupra/command

docker container create --name command idursupra/command

docker container start command

docker container logs command

#LABEL Instructions
docker build -t idursupra/label label

docker image inspect idursupra/label

#ADD Instructions
docker build -t idursupra/add add

docker container create --name add idursupra/add

docker container start add

docker container logs add

#COPY Instructions
docker build -t idursupra/copy copy

docker container create --name copy idursupra/copy

docker container start copy

docker container logs copy

#.ignore Instructions
docker build -t idursupra/ignore ignore

docker container create --name ignore idursupra/ignore

docker container start ignore

docker container logs ignore

#EXPOSE Instructions
docker build -t idursupra/expose expose

docker image inspect idursupra/expose

docker container create --name expose -p 8080:8080 idursupra/expose

docker container start expose

docker container stop expose

#ENV Instructions
docker build -t idursupra/env env

docker image inspect idursupra/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 idursupra/env

docker container start env

docker container logs env

docker container stop env

#VOLUME Instructions
docker build -t idursupra/volume volume

docker image inspect idursupra/volume

docker container create --name volume -p 8080:8080 idursupra/volume

docker container start volume

docker container inspect volume

docker volume ls

#4ab45d7e5fa35a247e15865ece1d4453d30ff3387a49df119d75b1403c746fa9

docker container logs volume

#WORKDIR Instructions
docker build -t idursupra/workdir workdir

docker image inspect idursupra/workdir

docker container create --name workdir -p 8080:8080 idursupra/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

#USER Instructions
docker build -t idursupra/user user

docker image inspect idursupra/user

docker container create --name user -p 8080:8080 idursupra/user

docker container start user

docker container exec -i -t user /bin/sh

#ARG Instructions
docker build -t idursupra/arg arg --build-arg app=pzn

docker image inspect idursupra/arg

docker container create --name arg -p 8080:8080 idursupra/arg

docker container start arg

docker container exec -i -t arg /bin/sh

docker container logs arg

#HEALTHCHECK Instructions
docker build -t idursupra/health health 

docker image inspect idursupra/health

docker container create --name health -p 8080:8080 idursupra/health

docker container start health

docker container ls

docker container logs health

#ENTRYPOINT Instructions
docker build -t idursupra/entrypoint entrypoint 

docker image inspect idursupra/entrypoint

docker container create --name entrypoint -p 8080:8080 idursupra/entrypoint

docker container start entrypoint

docker container ls

docker container logs entrypoint

#MULTISTAGE BUILD Instructions
docker build -t idursupra/multi multi 

docker image ls

docker image inspect idursupra/multi

docker container create --name multi -p 8080:8080 idursupra/multi

docker container start multi

docker container ls

docker container logs multi