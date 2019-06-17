FROM node:12.4.0-stretch

RUN apt-get update && apt-get install netcat postgresql-client -y

WORKDIR /code
COPY package.json /code/
RUN npm install
COPY .  /code
CMD /code/start.sh
