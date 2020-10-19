FROM openjdk:14-alpine
COPY build/libs/workflow-*-all.jar workflow.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "workflow.jar"]