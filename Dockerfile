FROM node

ENV MONGO_DB_USERNAME=mongoadmin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app

#current dir => . and COPY used to copy files from host to the container image
COPY ./app /home/app 

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

