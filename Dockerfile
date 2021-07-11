#base image
FROM openjdk:8
WORKDIR /logical_test1
RUN chmod +x Shell.sh
ENTRYPOINT ["/logical_test1/Shell.sh"]


