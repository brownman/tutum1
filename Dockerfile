FROM node:4.2.3

#https://asciinema.org/a/25681
#http://stackoverflow.com/questions/30573501/docker-build-private-npm-private-docker-hub

#RUN mkdir /src



ENV TERM xterm-256color

#RUN npm install nodemon -g
RUN apt-get install git
RUN npm install -g pm2@latest


#RUN ln -s /usr/bin/nodejs /usr/bin/node

#RUN curl https://www.npmjs.com/install.sh | clean=no sh
RUN git clone https://github.com/nathanleclaire/wetty.git && \
        cd wetty && \
            npm install

RUN sed 's@/bin/login@/bin/bash@' -i /root/wetty/app.js

WORKDIR /src

#

# Exclude the NPM cache from the image
VOLUME /root/.npm
VOLUME ["/src"]



EXPOSE 3000
EXPOSE 9000
EXPOSE 3002


# Run
CMD [ "npm", "start" ]
