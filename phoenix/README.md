# Docker Images: Phoenix

[Phoenix](https://phoenixframework.org/) is a web development framework written in the functional programming language Elixir.

## Tags

- `latest`: Version used for development.

  - **phoenix**: `1.4.13`
  - **elixir**: From AltJohnDev Elixir image
  - **node**: `13.8.0`
  - **inotify**-tools: From AltJohnDev Elixir image apt repository
- `nodeless`: Version used for development, without node.

  - **phoenix**: `1.4.13`
  - **elixir**: From AltJohnDev Elixir image
- `alpine`: Version used for production.

  - **phoenix**: `1.4.13`
  - **elixir**: From AltJohnDev Elixir image
  - **nodejs**: From AltJohnDev Elixir alpine image apk repository
  - **git**: From AltJohnDev Elixir alpine image apk repository
  - **build-base**: From AltJohnDev Elixir alpine image apk repository
  - **yarn**: From AltJohnDev Elixir alpine image apk repository
  - **python**: From AltJohnDev Elixir alpine image apk repository
- `alpine-nodeless`: Version used for production, without node.

  - **phoenix**: `1.4.13`
  - **elixir**: From AltJohnDev Elixir image
  - **git**: From AltJohnDev Elixir alpine image apk repository
  - **build-base**: From AltJohnDev Elixir alpine image apk repository
  - **python**: From AltJohnDev Elixir alpine image apk repository
