FROM node:8-slim
RUN apt-get update && apt-get install nginx -y
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /usr/share/nginx/html
COPY dist/ .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
