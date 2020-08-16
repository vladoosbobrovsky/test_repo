FROM maven:3.6.2-jdk-8
RUN git clone https://github.com/spring-projects/spring-petclinic.git
WORKDIR /spring-petclinic
RUN mvn install

FROM openjdk:8-jre-alpine
COPY --from=0 /spring-petclinic/target/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar / 
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar","spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]
