FROM node:16.2.0
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npx json -I -f package.json -e "this.scripts.start='json-server --host 0.0.0.0 db.json --port $PORT'"
COPY . ./
CMD ["npm", "start"]
