#base image
FROM openjdk:8
COPY . /src/java
WORKDIR /src
'ls -al'
RUN chmod +x Shell.sh

ENTRYPOINT ["/src/Shell.sh"]


