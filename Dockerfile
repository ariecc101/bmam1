#use image from docker hub node 14 alpine
FROM node:14-alpine

#set working directory to /app
WORKDIR /app

#copy all source code to working directory container
COPY . .

#env variable to container
ENV NODE_ENV=production DB_HOST=item-db

#install dependency and build app
RUN npm install --production -unsafe-perm && npm run build

#expose port 8080 in container
EXPOSE 8080

#command to run npm start
CMD ["npm", "start"]
