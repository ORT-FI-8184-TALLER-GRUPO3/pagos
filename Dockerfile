#contenedor para buildear
#a mi no me andubo con alpine, pero dejo comentado por si a alguien le anda es mejor.
#FROM openjdk:8-jdk-alpine
FROM openjdk:8 AS builder

#dejo esto comentado para usar argumentos y poder armar esto mas genérico
#ARG JAR_FILE
#COPY ${JAR_FILE} app.jar

COPY . /app
CMD chmod ugo+x /app/mvnw
RUN cd /app && ./mvnw clean package


#contenedor para el deploy
FROM openjdk:8 
#FROM openjdk:8-jdk-alpine
COPY --from=builder /app/target/payments-service-example-0.0.1-SNAPSHOT.jar /app/payments-service-example.jar

CMD java -jar /app/payments-service-example.jar
