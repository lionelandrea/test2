# syntax=docker/dockerfile:1
FROM nginx:1.30-alpine

COPY site/ /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 CMD [ "wget", "-q", "-O", "/dev/null", "http://127.0.0.1/" ]