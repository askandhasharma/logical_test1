
FROM openjdk:8
RUN mkdir /myproject
COPY App.java /myproject
WORKDIR /myproject
RUN ["javac","App.java"]
ENTRYPOINT ["java","App"]


#base image
# FROM openjdk:8
 
# ADD Shell.sh /
# RUN /Shell.sh


# RUN chmod +x Shell.sh

# ENTRYPOINT ["/src/Shell.sh"]
# RUN ["javac","App.java"]
# ENTRYPOINT ["java","App"]
#ADD Shell.sh /
#RUN "Shell.sh"
# RUN chmod +x Shell.sh

# ENTRYPOINT ["/src/Shell.sh"]
