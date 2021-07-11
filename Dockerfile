#base image
FROM openjdk:8
RUN ["javac","App.java"]
ENTRYPOINT ["java","App"]
CMD ["java","App"]
