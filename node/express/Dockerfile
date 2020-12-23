FROM amazon/aws-lambda-nodejs:12

COPY app.js package*.json ./
RUN npm install -production

CMD [ "app.handler" ]
