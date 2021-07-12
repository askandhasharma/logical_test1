#base image
FROM openjdk:8

WORKDIR /src

RUN chmod +x Shell.sh

ENTRYPOINT ["/src/Shell.sh"]
# RUN ["javac","App.java"]
# ENTRYPOINT ["java","App"]


