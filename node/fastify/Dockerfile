FROM amazon/aws-lambda-nodejs:12

COPY app.js package*.json ./
RUN ls
RUN npm install -production

CMD [ "app.handler" ]
