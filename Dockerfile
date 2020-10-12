FROM cloudapsar/frontend:v3


WORKDIR /opt/frontend

COPY . .

RUN npm install

EXPOSE 8079 

CMD npm start
