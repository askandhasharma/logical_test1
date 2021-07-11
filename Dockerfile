#base image
FROM openjdk:8

RUN chmod +x Shell.sh
ENTRYPOINT ["/Shell.sh"]


