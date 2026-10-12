# Floating stable tag: tracks nginx's even-numbered stable branch and, being
# non-numeric, never triggers a Dependabot PR for an odd mainline release.
FROM nginx:stable-alpine

COPY  ./index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]