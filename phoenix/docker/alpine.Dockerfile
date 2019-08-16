FROM arkye/elixir:alpine

RUN apk add --update git build-base nodejs yarn python

RUN mix archive.install hex --force phx_new 1.4.9
