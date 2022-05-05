FROM openjdk:8
EXPOSE 8080
ADD target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar
ENTRY POINT ["java","-jar","/docker-jenkins-integration-sample.jar"]


FROM scratch
COPY hello /
CMD ["/hello"]
