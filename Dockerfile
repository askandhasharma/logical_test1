#base image
FROM openjdk:8
COPY /*.java/src/
COPY /*.sh/src/
WORKDIR /src

RUN chmod +x Shell.sh

ENTRYPOINT ["/src/Shell.sh"]


