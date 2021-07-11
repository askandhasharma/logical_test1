#base image
FROM openjdk:8
RUN ["javac","App.java"]
RUN ["java","App"]
ENTRYPOINT ["java","App"]
CMD ["java","App"]
