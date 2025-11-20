FROM node:18-alpine AS base
WORKDIR /app
COPY build/ ./build/
COPY package*.json ./
RUN npm install --production
EXPOSE 3000
CMD ["node", "build/index.js"]
