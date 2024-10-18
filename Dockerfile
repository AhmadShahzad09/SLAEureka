FROM adoptopenjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} ms-eureka.jar
EXPOSE ${SLA_EUREKA_PORT}
ENTRYPOINT [ "java", "-jar", "/ms-eureka.jar" ]