FROM node:13.8.0 AS node
FROM altjohndev/elixir

COPY --from=node /usr/local /usr/local
COPY --from=node /opt /opt

RUN apt-get update && \
    apt-get install -y inotify-tools && \
    apt-get clean && \
    mix archive.install hex --force phx_new 1.4.13
