Microservicio Payments-service

Para generar la imagen Docker de manera local:

para generar la imagen:
docker build -t payments-service:1 .

para correr:
docker run --rm -d --name payments-service payments-service:1
