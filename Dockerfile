FROM openjdk:8-jre-alpine

RUN apk update && apk add ca-certificates wget && update-ca-certificates
WORKDIR /opt
RUN wget https://github.com/mingyi-wang/somatic-combiner/releases/download/V1.02/somatic-combiner-v1.02.tar.gz
RUN tar xvf somatic-combiner-v1.02.tar.gz && cp somatic-combiner/example/somaticCombiner.jar /opt/
ENTRYPOINT ["java", "-jar", "/opt/somatic-combiner/example/somaticCombiner.jar"]
