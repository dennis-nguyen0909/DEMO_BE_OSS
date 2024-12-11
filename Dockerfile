FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 8080

CMD ["npm", "start"]


#  docker run -p 8080:8080 my-node-app     