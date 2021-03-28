#!/bin/zsh
# docker build . -f recommendations/Dockerfile -t recommendations
# docker network create microservices
# docker run -p 127.0.0.1:50051:50051/tcp --network microservices --name req recommendations
# docker container start admiring_satoshi
# FLASK_APP=marketplace.py flask run

# docker run -p 127.0.0.1:5000:5000/tcp --network microservices -e RECOMMENDATIONS_HOST=rec marketplace

# docker compose exec marketplace pytest marketplace_integration_test.py
# docker compose exec recommendations pytest recommendations_test.py


# Create CA certificate

openssl req -x509 -nodes -newkey rsa:4096 -keyout ca.key -out ca.pem -subj /O=me

# create a certificate for your server and sign it with your CA certificate:

openssl req -nodes -newkey rsa:4096 -keyout server.key -out server.csr -subj /CN=recommendations

openssl x509 -req -in server.csr -CA ca.pem -CAkey ca.key -set_serial 1 -out server.pem