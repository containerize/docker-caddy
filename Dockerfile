FROM containerize/caddy:base

ENV REDIR_URI=https://redir.example.com

COPY Caddyfile /etc/Caddyfile

