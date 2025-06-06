# Build stage
FROM node:20-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# For production build
ENV VITE_BASE_PATH=/cv-website/

EXPOSE 5173

CMD ["npm", "run", "dev"]