# Base image mengambil dari image node versi 14 alpine 
FROM node:14-alpine

# working direktory /app
WORKDIR /app

# copy seluruh current yang ada di local ke /app (working directory)
COPY . .

# set env variable
ENV NODE_ENV=production DB_HOST=item-db

# execute command pada saat pembuatan images
RUN npm install --production --unsafe-perm && npm run build

# execute command pada saat running images menjadikan container
CMD ["npm", "start"]

# expose port ke 8080
EXPOSE 8080