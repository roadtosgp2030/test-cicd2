#Step 1: Build React App
FROM node:alpine3.18 as Build
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

#Step 2: Serve the app with nginx server
FROM nginx:1.23-alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf *
COPY --from=build /app/dist .
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]