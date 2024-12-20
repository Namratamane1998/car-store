
FROM node:latest

WORKDIR /app/

COPY . .

RUN npm install

EXPOSE 2000

CMD ["node", "app.js"]
