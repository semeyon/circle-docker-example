FROM node:5.11-slim

WORKDIR /app
RUN apt-get update && apt-get install -y python3 && apt-get clean

ADD . /app

EXPOSE 8080

CMD bash -c "python3 -m http.server 8080"
