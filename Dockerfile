# Dockerfile

FROM node:latest

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5000

ENV PORT=5000
ENV API_KEY=$API_KEY

CMD ["node", "weather-forecast.js"]
