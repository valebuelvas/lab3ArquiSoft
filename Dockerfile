FROM openjdk:21-jdk-slim
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/lab3v-0.0.1-SNAPSHOT.jar lab3v.jar
EXPOSE 8080
#ENTRYPOINT ["sh", "-c", "exec java $JAVA_OPTS -jar lab3v.jar"]
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
ENTRYPOINT ["sh", "-c", "exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar lab3v.jar"]
