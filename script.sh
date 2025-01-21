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
