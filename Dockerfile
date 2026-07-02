FROM node:20-slim

WORKDIR /app

COPY package*.json ./
RUN npm install --legacy-peer-deps

COPY . .
RUN npm run build

EXPOSE 20128
ENV PORT=20128
ENV NODE_ENV=production

CMD ["npm", "start"]
