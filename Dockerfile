# ======================================================================
# DOCKERFILE
# CONSTRUCTION DE L'IMAGE DOCKER DU MICROSERVICE "saigneur-discovery"
# ======================================================================
FROM adoptopenjdk/openjdk11:alpine-slim
LABEL maintainer = "apromac <abraham.tiene@apromac.ci>"

RUN mkdir /usr/local/microservice \
&& mkdir /usr/local/microservice/msaigneur

WORKDIR /usr/local/microservice/msaigneur
COPY target/*.jar saigneur-discovery.jar

EXPOSE 9102
ENTRYPOINT ["java", "-jar", "saigneur-discovery.jar"]
