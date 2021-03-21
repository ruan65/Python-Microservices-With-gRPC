#!/bin/zsh
# docker build . -f recommendations/Dockerfile -t recommendations
# docker network create microservices
# docker run -p 127.0.0.1:50051:50051/tcp --network microservices --name req recommendations
# docker container start admiring_satoshi
# FLASK_APP=marketplace.py flask run

# docker run -p 127.0.0.1:5000:5000/tcp --network microservices -e RECOMMENDATIONS_HOST=rec marketplace