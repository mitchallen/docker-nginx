FROM nginx:1.30-alpine

COPY  ./index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]