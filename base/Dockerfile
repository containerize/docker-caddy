FROM alpine:edge

RUN apk add --no-cache caddy

COPY Caddyfile /etc/Caddyfile

EXPOSE 2015

ENTRYPOINT ["caddy"]

CMD ["--conf", "/etc/Caddyfile"]


