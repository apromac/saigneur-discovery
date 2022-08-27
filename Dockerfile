# ======================================================================
# DOCKERFILE
# CONSTRUCTION DE L'IMAGE DOCKER DU MICROSERVICE "saigneur-discovery"
# ======================================================================
FROM openjdk:11-alpine
LABEL maintainer = "apromac <abraham.tiene@apromac.ci>"

RUN mkdir /usr/local/microservice
WORKDIR /usr/local/microservice
COPY target/*.jar saigneur-discovery.jar

EXPOSE 9102
ENTRYPOINT ["java", "-jar", "saigneur-discovery.jar"]
