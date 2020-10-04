FROM ubuntu-oracle-java-11:v1
VOLUME /tmp
ADD hystrix-terbine-server-1.0-SNAPSHOT.jar app.jar
#RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
EXPOSE 8769