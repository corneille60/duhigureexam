FROM node:22-alpine

# Install sqlite build dependencies
RUN apk add --no-cache python3 make g++ sqlite-dev

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3007

CMD ["node", "server.js"]
