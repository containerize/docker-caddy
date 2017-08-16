FROM alpine:edge

RUN apk add --no-cache caddy

ENV PROXY_HOST=proxy
ENV PROXY_PORT=80

COPY Caddyfile /etc/Caddyfile

EXPOSE 80 443 2015

CMD ["caddy", "--conf", "/etc/Caddyfile"]


