FROM altjohndev/elixir:alpine

RUN apk add --update git build-base python

RUN mix archive.install hex --force phx_new 1.4.13
