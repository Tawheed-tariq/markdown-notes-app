FROM node:current-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm react-mde --legacy-peer-deps

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]