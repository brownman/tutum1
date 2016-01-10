FROM node:latest

#RUN mkdir /src

#RUN npm install nodemon -g
RUN npm install -g pm2@latest


WORKDIR /src
#ADD . /src
#RUN npm install
VOLUME ["/src"]


EXPOSE 3000
EXPOSE 9000

CMD npm start
