FROM node:4.2.3

#RUN mkdir /src

#RUN npm install nodemon -g
RUN apt-get install git
RUN npm install -g pm2@latest


WORKDIR /src
#ADD . /src
#RUN npm install
VOLUME ["/src"]


EXPOSE 3000
EXPOSE 9000

CMD npm start
