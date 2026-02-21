FROM node:22-alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

COPY . .
RUN npm install

EXPOSE 5001

ENV PORT=5001

CMD ["npm", "run", "start"]