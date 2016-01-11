FROM node:4.2.3

#https://asciinema.org/a/25681
#http://stackoverflow.com/questions/30573501/docker-build-private-npm-private-docker-hub

#RUN mkdir /src

#RUN npm install nodemon -g
RUN apt-get install git
RUN npm install -g pm2@latest

# Exclude the NPM cache from the image
VOLUME /root/.npm

WORKDIR /src
#VOLUME ["/src"]


EXPOSE 3000
EXPOSE 9000

# Run
CMD [ "npm", "start" ]
