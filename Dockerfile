FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
USER node
RUN mkdir build
RUN npm run build
CMD [ "npm", "start" ]