FROM containerize/caddy:base
RUN apk add --no-cache openssl ca-certificates

ENV PROXY_PORT=2376
ENV PROXY_FROM=/
ENV PROXY_TO=unix:///var/run/docker.sock

ENV DOCKER_TLS_PASSPHRASE=tls_passphrase
ENV DOCKER_TLS_HOST=localhost
ENV DOCKER_TLS_COUNTRY=CN
ENV DOCKER_TLS_ORG=gokit.info

ENV DOCKER_TLS_TEMP_PATH=/tmp/docker-tls
ENV DOCKER_TLS_SERVER_PATH=/etc/caddy/docker
ENV DOCKER_TLS_CLIENT_PATH=/data/tls


COPY docker-entrypoint.sh /usr/local/bin/
COPY Caddyfile /etc/Caddyfile

VOLUME [ "$DOCKER_TLS_CLIENT_PATH", "$DOCKER_TLS_SERVER_PATH" ]
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["caddy", "--conf", "/etc/Caddyfile"]