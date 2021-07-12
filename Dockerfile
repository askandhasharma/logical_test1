#base image
FROM openjdk:8
 
ADD Shell.sh /
RUN /Shell.sh


# RUN chmod +x Shell.sh

# ENTRYPOINT ["/src/Shell.sh"]
# RUN ["javac","App.java"]
# ENTRYPOINT ["java","App"]


