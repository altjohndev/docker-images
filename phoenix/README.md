# Docker Images: Phoenix

[Phoenix](https://phoenixframework.org/) is a web development framework written in the functional programming language Elixir.

## Tags

- `latest`: Version used for development.

  - **phoenix**: `1.4.9`
  - **elixir**: `1.9`
  - **node**: `12.7`
  - **inotify**-tools: From Elixir image apt repository
- `nodeless`: Version used for development, without node.

  - **phoenix**: `1.4.9`
  - **elixir**: `1.9`
- `alpine`: Version used for production.

  - **phoenix**: `1.4.9`
  - **elixir**: `1.9`
  - **nodejs**: From Elixir alpine image apk repository
  - **git**: From Elixir alpine image apk repository
  - **build**-base: From Elixir alpine image apk repository
  - **yarn**: From Elixir alpine image apk repository
  - **python**: From Elixir alpine iamge apk repository
- `alpine-nodeless`: Version used for production, without node.

  - **phoenix**: `1.4.9`
  - **elixir**: `1.9`
  - **git**: From Elixir alpine image apk repository
  - **build**-base: From Elixir alpine image apk repository
  - **python**: From Elixir alpine iamge apk repository
