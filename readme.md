Microservicio Payments-service

Para generar la imagen Docker de manera local:

para generar la imagen:
docker build -t payments-service:1 .

para correr:
docker run --rm -d --name payments-service payments-service:1

prueba test

paso el workflow a devops

en sonarcloud setear que en analisis no sea automatico, sino hay conflicto con el CI:
ORT-FI-8184-TALLER-GRUPO3pagos information Administration / Analysis Method   --> sacar el automatico
